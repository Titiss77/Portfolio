<?php echo $this->extend('templates/layout'); ?>

<?php echo $this->section('content'); ?>

<div class="veille">
    <h1>📡 L'internet des objets - IoT</h1>
    <button class="btn_maj" onclick="location.href='veille/fetch_rss'">Mettre à jour</button>
    <?php if (!empty($articles) && is_array($articles)) { ?> <div class=" articles-grid">
        <?php foreach ($articles as $article) { ?>
        <div class="article-card">
            <h2>
                <a href="<?php echo esc($article['link']); ?>" target="_blank" rel="noopener noreferrer">
                    <?php echo esc($article['title']); ?>
                </a>
            </h2>
            <div class="meta">
                <span class="source-badge"><?php echo esc($article['source']); ?></span>
                <br> Publié le : <?php echo date('d/m/Y à H:i', strtotime($article['pub_date'])); ?>
            </div>
            <div class="description">
                <?php echo character_limiter(strip_tags($article['description']), 200); ?>
            </div>
        </div>
        <?php } ?>
    </div>
    <?php } ?>
</div>

<?php echo $this->endSection(); ?>