<?= $this->extend('templates/layout') ?>

<?= $this->section('content') ?>

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
                <td rowspan="<?= $rowspan ?>"><?= esc($categorie['appellation'] ?? $categorie['libelle']) ?></td>
                <?php $firstRow = false; ?>
                <?php endif; ?>

                <td><?= esc($comp['libelle']) ?></td>

                <?php if ($comp['vu'] === '1' && $comp['justification_data']): ?>
                <?php
                            $justification = nl2br(htmlspecialchars($comp['justification_data']['justification'], ENT_QUOTES));
                            $chemin_image = !empty($comp['justification_data']['imgUrl']) ? base_url(esc($comp['justification_data']['imgUrl'])) : '';
                            ?>
                <td style="text-align: center;">
                    <button class="btn-justification" data-justification="<?= $justification ?>"
                        data-img="<?= $chemin_image ?>">X</button>
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
    <button class="close-btn" onclick="closePopup()">Fermer</button>
    <p id="justification-text" style="font-size: 1.1em; line-height: 1.5; margin-bottom: 15px;"></p>
    <img id="justification-img" src="" alt="Justification" style="display: none;" />
</div>

<script>
document.querySelectorAll('.btn-justification').forEach(btn => {
    btn.addEventListener('click', () => {
        const justification = btn.getAttribute('data-justification');
        const chemin_image = btn.getAttribute('data-img');

        document.getElementById('justification-text').innerHTML = justification;
        const imgEl = document.getElementById('justification-img');

        if (chemin_image && chemin_image !== 'null' && chemin_image !== '') {
            imgEl.src = chemin_image;
            imgEl.style.display = 'block';
        } else {
            imgEl.style.display = 'none';
        }

        document.getElementById('popup').style.display =
        'flex'; // On utilise flex pour centrer le contenu
        document.getElementById('overlay').style.display = 'block';
    });
});

function closePopup() {
    document.getElementById('popup').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';
}

// Bonus : Fermer le popup si on clique à côté (sur l'overlay noir)
document.getElementById('overlay').addEventListener('click', closePopup);
</script>

<?= $this->endSection() ?>