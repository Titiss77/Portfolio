<?php include('serveur.php'); 
require_once 'themeRoot.php';?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <?php include('head.php'); ?>
    <title>Compétences - Portfolio</title>
    <style>
        .justification-popup {
            display: none;
            flex-direction: column;
            align-items: center;       /* Centre horizontalement */
            justify-content: center;   /* Centre verticalement */
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            padding: 20px;
            max-width: 90%;
            max-height: 90%;
            overflow: auto;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
            z-index: 1001;
        }

        .justification-popup img {
            max-width: 100%;
            max-height: 360px;
            border: 2px solid gray;
            border-radius: 8px;
            box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.3);
            margin: 1rem auto; /* centre horizontalement */
            display: block;    /* requis pour margin auto */
        }


        #overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.5);
            z-index: 1000;
            display: none;
        }

    </style>
</head>
<body>
<?php include('header.php'); ?>
<div class="tableau">
    <table id="monTableau">
        <thead>
            <tr>
                <th>Activité Bloc n°1</th>
                <th>Compétences</th>
                <th>VU</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $stmt = $connexion->query("SELECT * FROM categoriesbloc1");
            $categories = $stmt->fetchAll();

            foreach ($categories as $categorie) {
                $stmtComp = $connexion->prepare("SELECT * FROM competencesacocher WHERE idCategorie = ? ORDER BY id ASC");
                $stmtComp->execute([$categorie['id']]);
                $competences = $stmtComp->fetchAll();

                $rowspan = count($competences);
                $firstRow = true;

                foreach ($competences as $comp) {
                    echo "<tr>";

                    if ($firstRow) {
                        echo "<td rowspan=\"$rowspan\">" . htmlspecialchars($categorie['appellation']) . "</td>";
                        $firstRow = false;
                    }

                    echo "<td>" . htmlspecialchars($comp['libelle']) . "</td>";

                    if ($comp['vu']) {
                        $stmtJust = $connexion->prepare("SELECT justification, imgUrl FROM justification WHERE id = ?");
                        $stmtJust->execute([$comp['idJustification']]);
                        $justData = $stmtJust->fetch(PDO::FETCH_ASSOC);

                        $justification = nl2br(htmlspecialchars($justData['justification']));
                        $imgUrl = $justData['imgUrl'] ?? '';

                        // Le bouton contient texte et URL image
                        echo "<td>
                            <button class='btn-justification' data-justification=\"" . htmlspecialchars($justification, ENT_QUOTES) . "\" data-img=\"" . htmlspecialchars($imgUrl, ENT_QUOTES) . "\">X</button>
                        </td>";
                    } else {
                        echo "<td></td>";
                    }

                    echo "</tr>";
                }
            }
            ?>
        </tbody>
    </table>
</div>

<!-- Popup + overlay -->
<div class="justification-popup" id="popup">
    <button onclick="closePopup()">Fermer</button>
    <p id="justification-text"></p>
    <img id="justification-img" src="" alt="Justification" style="max-width: 100%; display: none;" />
</div>


<script>
    document.querySelectorAll('.btn-justification').forEach(btn => {
        btn.addEventListener('click', () => {
            const justification = btn.getAttribute('data-justification');
            const imgUrl = btn.getAttribute('data-img');
            const popup = document.getElementById('popup');
            const overlay = document.getElementById('overlay');

            document.getElementById('justification-text').innerHTML = justification;

            const imgEl = document.getElementById('justification-img');
            if (imgUrl) {
                imgEl.src = imgUrl;
                imgEl.style.display = 'block';
            } else {
                imgEl.style.display = 'none';
            }

            popup.style.display = 'block';
            overlay.style.display = 'block';

        });
    });

    function closePopup() {
        document.getElementById('popup').style.display = 'none';
        document.getElementById('overlay').style.display = 'none';
    }
</script>
</body>
</html>
