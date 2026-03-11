<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= esc($title) ?></title>
    <link rel="stylesheet" href="<?= base_url('assets/css/style.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/contact.css') ?>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <?php if(isset($extra_css)) echo $extra_css; ?>
</head>

<body>
    <header>
        <ul>
            <li><a href="<?= base_url('/') ?>" class="acceuil">Accueil</a></li>
            <li><a href="<?= base_url('tableau') ?>" class="h-tableau">Compétences</a></li>
            <li><a href="<?= base_url('projets') ?>" class="projets">Projets</a></li>
            <li><a href="<?= base_url('contact') ?>" class="contact">Contacts</a></li>
        </ul>
    </header>