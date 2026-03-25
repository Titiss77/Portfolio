<?= $this->extend('templates/layout') ?>

<?= $this->section('content') ?>

<div class="veille">
    <h1>📡 L'internet des objets - IoT</h1>

    <?php if (!empty($articles) && is_array($articles)): ?>
    <div class="articles-grid">
        <?php foreach ($articles as $article): ?>
        <div class="article-card">
            <h2>
                <a href="<?= esc($article['link']) ?>" target="_blank" rel="noopener noreferrer">
                    <?= esc($article['title']) ?>
                </a>
            </h2>
            <div class="meta">
                <span class="source-badge"><?= esc($article['source']) ?></span>
                <br> Publié le : <?= date('d/m/Y à H:i', strtotime($article['pub_date'])) ?>
            </div>
            <div class="description">
                <?= character_limiter(strip_tags($article['description']), 200) ?>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
    <?php else: ?>
    <p style="text-align:center;">Aucun article dans la base de données. Avez-vous exécuté la route /veille/fetch_rss ?
    </p>
    <?php endif; ?>
</div>

<?= $this->endSection() ?>