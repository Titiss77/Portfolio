<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ma Veille IoT</title>
    <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f7f6;
        color: #333;
        max-width: 1200px;
        /* Élargi pour faire de la place à plusieurs colonnes */
        margin: 0 auto;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 40px;
    }

    /* --- NOUVEAU : Le conteneur qui gère l'affichage en grille --- */
    .articles-grid {
        display: grid;
        /* Crée des colonnes d'au moins 320px de large, et s'adapte automatiquement à l'écran */
        grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
        gap: 25px;
        /* Espace entre les cartes */
        align-items: stretch;
        /* Force les cartes d'une même ligne à avoir la même hauteur */
    }

    .article-card {
        background: #fff;
        border-radius: 8px;
        padding: 20px;
        /* Suppression du margin-bottom car géré par le 'gap' de la grille */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        display: flex;
        flex-direction: column;
        /* Permet de structurer l'intérieur de la carte de haut en bas */
        transition: transform 0.2s ease, box-shadow 0.2s ease;
        /* Animation fluide au survol */
    }

    /* Petit effet dynamique quand on passe la souris sur une carte */
    .article-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    }

    .article-card h2 {
        margin-top: 0;
        font-size: 1.3em;
        line-height: 1.3;
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
        display: inline-block;
        margin-bottom: 5px;
        /* Évite que la date ne colle trop au badge sur les petits écrans */
    }

    .description {
        font-size: 0.95em;
        line-height: 1.5;
        color: #555;
        flex-grow: 1;
        /* Pousse la description pour combler le vide si les cartes ont des hauteurs différentes */
    }
    </style>
</head>

<body>

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