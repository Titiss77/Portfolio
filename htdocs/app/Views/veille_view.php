<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon Dashboard de Veille</title>
    <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f7f6;
        color: #333;
        max-width: 900px;
        margin: 0 auto;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #2c3e50;
    }

    .article-card {
        background: #fff;
        border-radius: 8px;
        padding: 20px;
        margin-bottom: 20px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .article-card h2 {
        margin-top: 0;
        font-size: 1.4em;
    }

    .article-card a {
        color: #2980b9;
        text-decoration: none;
    }

    .article-card a:hover {
        text-decoration: underline;
    }

    .meta {
        font-size: 0.85em;
        color: #7f8c8d;
        margin-bottom: 15px;
    }

    .source-badge {
        background-color: #e74c3c;
        color: white;
        padding: 3px 8px;
        border-radius: 12px;
        font-weight: bold;
    }

    .description {
        font-size: 0.95em;
        line-height: 1.5;
        color: #555;
    }
    </style>
</head>

<body>

    <h1>📡 Mon Dashboard de Veille Informatique</h1>

    <?php if (!empty($articles) && is_array($articles)): ?>
    <?php foreach ($articles as $article): ?>

    <div class="article-card">
        <h2>
            <a href="<?= esc($article['link']) ?>" target="_blank" rel="noopener noreferrer">
                <?= esc($article['title']) ?>
            </a>
        </h2>

        <div class="meta">
            <span class="source-badge"><?= esc($article['source']) ?></span>
            &nbsp;•&nbsp; Publié le : <?= date('d/m/Y à H:i', strtotime($article['pub_date'])) ?>
        </div>

        <div class="description">
            <?= character_limiter(strip_tags($article['description']), 200) ?>
        </div>
    </div>

    <?php endforeach; ?>
    <?php else: ?>
    <p style="text-align:center;">Aucun article dans la base de données. Avez-vous exécuté la route /veille/fetch_rss ?
    </p>
    <?php endif; ?>

</body>

</html>