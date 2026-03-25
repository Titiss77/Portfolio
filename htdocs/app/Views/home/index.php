<?= $this->extend('templates/layout') ?>

<?= $this->section('content') ?>

<div class="main">

    <section class="presentation" id="presentation">
        <img src="<?= base_url(esc($personne['photo_de_profil'])) ?>" alt="photo de profil" class="image">
        <p class="nom"><?= esc($personne['prenom']) . ' ' . esc($personne['nom']) ?></p>
        <p class="etudes"><?= esc($personne['etudes']) ?></p>

        <div class="liens_extern">
            <p class="entete">Liens externes</p>
            <?php foreach ($lienExternes as $lien): ?>
            <a href="<?= esc($lien['url']) ?>" id="lien">➜ <?= esc($lien['libelle']) ?></a>
            <?php endforeach; ?>
        </div>

        <div class="div_age">
            <p class="entete">Âge</p>
            <p id="info"><?= calculate_age($personne['date_de_naissance']) ?> ans</p>
        </div>

        <div class="div_loca">
            <p class="entete">Localisation</p>
            <p id="info"><?= esc($personne['localisation']) ?></p>
        </div>
    </section>

    <section class="autre">
        <div class="expertise" id="expertise">
            <p class="entete2">Me concernant</p>
            <p class="perso">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= nl2br(esc($personne['me_concernant'])) ?></p>
            <div class="container"></div>
        </div>
        <div class="divLoisir">
            <p class="entete2">Loisirs</p>
            <div class="loisir">
                <?php foreach ($loisirs as $loisir): ?>
                <figure class="interet">
                    <img src="<?= base_url(esc($loisir['chemin_image'])) ?>" alt="<?= esc($loisir['libelle']) ?>">
                    <figcaption><?= esc($loisir['libelle']) ?></figcaption>
                </figure>
                <?php endforeach; ?>
            </div>
        </div>
    </section>

    <div class="light" id="light"></div>
</div>
<?= $this->endSection() ?>