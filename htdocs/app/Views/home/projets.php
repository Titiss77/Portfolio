<?= $this->extend('templates/layout') ?>

<?= $this->section('content') ?>

<div class="projets-grid">
    <?php if (!empty($projets)): ?>
    <?php foreach ($projets as $projet): ?>
    <div class="projet-card">
        <span
            class="date"><?= date('d/m/Y', strtotime($projet['dateRealisation'] ?? $projet['date_realisation'])) ?></span>
        <div class="titre"><?= esc($projet['libelleProjet'] ?? $projet['libelle']) ?></div>
        <div class="description"><?= esc($projet['descriptionProjet'] ?? $projet['description']) ?></div>
        <button
            onclick="window.open('<?= esc($projet['urlProjet'] ?? $projet['lien']) ?>', '_blank', 'noopener,noreferrer')"
            type="button">
            Ouvrir le projet
        </button>
    </div>
    <?php endforeach; ?>
    <?php else: ?>
    <p style="text-align: center; width: 100%;">Aucun projet à afficher.</p>
    <?php endif; ?>
</div>

<?= $this->endSection() ?>