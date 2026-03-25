<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= base_url('assets/css/veille_style.css') ?>">
    <title>Ma Veille IoT</title>
</head>

<body>
    <header>
        <ul>
            <li><a href="<?= base_url('/') ?>" class="acceuil">Accueil</a></li>
            <li><a href="<?= base_url('tableau') ?>" class="h-tableau">Compétences</a></li>
            <li><a href="<?= base_url('projets') ?>" class="projets">Projets</a></li>
            <li><a href="<?= base_url('veille') ?>" class="veille">Ma Veille</a></li>
            <li><a href="<?= base_url('contact') ?>" class="contact">Contacts</a></li>
        </ul>
    </header>

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

</body>

</html>