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
            <?php foreach ($categories as $cat): ?>
            <?php 
                $rowspan = count($cat['competences']);
                $firstRow = true;
                foreach ($cat['competences'] as $comp): 
                ?>
            <tr>
                <?php if ($firstRow): ?>
                <td rowspan="<?= $rowspan ?>"><?= esc($cat['appellation']) ?></td>
                <?php $firstRow = false; ?>
                <?php endif; ?>

                <td><?= esc($comp['libelle']) ?></td>

                <?php if ($comp['vu']): ?>
                <?php 
                        $justification = nl2br(esc($comp['justification_data']['justification']));
                        $imgUrl = $comp['justification_data']['imgUrl'] ?? '';
                        ?>
                <td>
                    <button class='btn-justification' data-justification="<?= esc($justification, 'attr') ?>"
                        data-img="<?= esc($imgUrl, 'attr') ?>">X</button>
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