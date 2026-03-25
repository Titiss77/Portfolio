<?= $this->extend('templates/layout') ?>

<?= $this->section('content') ?>

<style>
.justification-popup {
    display: none;
    flex-direction: column;
    align-items: center;
    justify-content: center;
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
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    z-index: 1001;
}

.justification-popup img {
    max-width: 100%;
    max-height: 360px;
    border: 2px solid gray;
    border-radius: 8px;
    box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.3);
    margin: 1rem auto;
    display: block;
}

#overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    z-index: 1000;
    display: none;
}
</style>

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
            <?php foreach ($categories as $categorie): ?>
            <?php 
                $rowspan = count($categorie['competences']);
                $firstRow = true;
                foreach ($categorie['competences'] as $comp): 
                ?>
            <tr>
                <?php if ($firstRow): ?>
                <td rowspan="<?= $rowspan ?>"><?= esc($categorie['appellation']) ?></td>
                <?php $firstRow = false; ?>
                <?php endif; ?>

                <td><?= esc($comp['libelle']) ?></td>

                <?php if ($comp['vu'] === '1' && $comp['justification_data']): ?>
                <?php
                            $justification = nl2br(htmlspecialchars($comp['justification_data']['justification'], ENT_QUOTES));
                            $imgUrl = $comp['justification_data']['imgUrl'] ? base_url(esc($comp['justification_data']['imgUrl'])) : '';
                        ?>
                <td>
                    <button class='btn-justification' data-justification="<?= $justification ?>"
                        data-img="<?= $imgUrl ?>">X</button>
                </td>
                <?php else: ?>
                <td></td>
                <?php endif; ?>
            </tr>
            <?php endforeach; ?>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<div id="overlay"></div>
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

        document.getElementById('justification-text').innerHTML = justification;
        const imgEl = document.getElementById('justification-img');

        if (imgUrl) {
            imgEl.src = imgUrl;
            imgEl.style.display = 'block';
        } else {
            imgEl.style.display = 'none';
        }

        document.getElementById('popup').style.display = 'block';
        document.getElementById('overlay').style.display = 'block';
    });
});

function closePopup() {
    document.getElementById('popup').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';
}
</script>
<?= $this->endSection() ?>