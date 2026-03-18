<style>
/* CSS d'origine conservé à l'identique */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: #f9f9f9;
    margin: 0;
    padding: 20px;
    color: #333;
}

.main {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
    text-transform: none;
}

.projet {
    background: white;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgb(0 0 0 / 0.1);
    padding: 20px;
    width: 280px;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
    position: relative;
}

.projet:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgb(0 0 0 / 0.2);
}

.projet p {
    margin: 0 0 10px;
}

.projet p:first-child {
    font-weight: 700;
    font-size: 1.1em;
    color: #007BFF;
}

.projet a {
    color: #007BFF;
    text-decoration: none;
    word-break: break-word;
}

.projet a:hover {
    text-decoration: underline;
}

.date {
    position: absolute;
    top: 12px;
    right: 16px;
    font-style: italic;
    font-size: 0.85em;
    color: #999;
}

.description {
    color: gray;
    font-weight: 500;
}

button {
    background-color: transparent;
    border: 2px solid #007BFF;
    color: #007BFF;
    padding: 8px 16px;
    font-size: 1em;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.2s ease, color 0.2s ease;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

button:hover {
    background-color: #007BFF;
    color: white;
}
</style>

<div class="main">
    <?php if (!empty($projets)) : ?>
    <?php foreach ($projets as $projet) : ?>
    <div class="projet">
        <span class="date"><?= date('d/m/Y', strtotime($projet["dateRealisation"])) ?></span>
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