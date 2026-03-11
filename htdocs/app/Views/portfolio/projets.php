<div class="main">
    <?php if (!empty($projets)) : ?>
    <?php foreach ($projets as $projet) : ?>
    <div class="projet">
        <span class="date"><?= esc($projet["dateRealisation"]) ?></span>
        <p><?= esc($projet["libelleProjet"]) ?> :</p>
        <p class="description"><?= esc($projet["descriptionProjet"]) ?></p>
        <button onclick="window.open('<?= esc($projet['urlProjet']) ?>', '_blank', 'noopener,noreferrer')"
            type="button">
            Ouvrir le projet
        </button>
    </div>
    <?php endforeach; ?>
    <?php else: ?>
    <p>Aucun projet à afficher.</p>
    <?php endif; ?>
</div>