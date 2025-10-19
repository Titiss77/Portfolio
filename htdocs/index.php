<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);
?>

<!DOCTYPE html>
<html lang="fr">

<head>
<?php include('head.php');?>
    <title>Acceuil - Portfolio</title>
</head>

<body>
    <?php 
    include('header.php');
    include('fonction.php');
    require_once 'serveur.php';
    ?>

    <?php 
        $personne = $connexion->query("SELECT urlPdp, nom, prenom, etudes, dateDeNaissance, localisation, meConcernant FROM `personnelle`");
        $personne = $personne->fetch();

        $lienExternes = $connexion->query("SELECT libelle, url FROM lienexternes");
        $lienExternes = $lienExternes->fetchAll();

        $loisirs = $connexion->query("SELECT libelle, urlImage FROM loisirs");
        $loisirs = $loisirs->fetchAll();
    ?>

    <div class="main">
        <section class="presentation" id="presentation">
            <img src="<?= $personne['urlPdp'] ?>" alt="photo de profil" class="image">
            <p class="nom"><?= $personne['prenom'] . ' ' . $personne['nom'] ?></p>
            <p class="etudes"><?= $personne['etudes'] ?></p>
            <div class="liens_extern">
                <p class="entete">Liens externes</p>
                <?php foreach ($lienExternes as $lien): ?>
                    <a href="<?= $lien['url'] ?>" target="_blank" id="lien">➜ <?= $lien['libelle'] ?></a>
                <?php endforeach; ?>
            </div>
            <div class="div_age">
                <p class="entete">age</p>
                <p id="info"><?= age($personne['dateDeNaissance']) ?> ans</p>

            </div>
            <div class="div_loca">
                <p class="entete">localisation</p>
                <p id="info"><?= $personne['localisation'] ?></p>
            </div>
        </section>


        <section class="autre">
            <div class="expertise" id="expertise">
                <p class="entete2">Me concernant</p>
                <p class="perso">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= nl2br($personne['meConcernant']) ?></p>
                <div class="container"></div>
            </div>
            <div class="divLoisir">
                <p class="entete2">Loisirs</p>
                <div class="loisir">
                    <?php foreach ($loisirs as $loisir): ?>
                        <figure class="interet">
                            <img src="<?= $loisir['urlImage'] ?>" alt="<?= $loisir['libelle'] ?>">
                            <figcaption><?= $loisir['libelle'] ?></figcaption>
                        </figure>
                    <?php endforeach; ?>
                </div>
            </div>
        </section>

        <div class="light" id="light"></div>
    </div>
</body>

</html>