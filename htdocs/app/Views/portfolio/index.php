<div class="main">
    <section class="presentation" id="presentation">
        <img src="<?= esc($personne['urlPdp']) ?>" alt="photo de profil" class="image">
        <p class="nom"><?= esc($personne['prenom'] . ' ' . $personne['nom']) ?></p>
        <p class="etudes"><?= esc($personne['etudes']) ?></p>
        <div class="liens_extern">
            <p class="entete">Liens externes</p>
            <?php foreach ($lienExternes as $lien): ?>
            <a href="<?= esc($lien['url']) ?>" target="_blank" id="lien">➜ <?= esc($lien['libelle']) ?></a>
            <?php endforeach; ?>
        </div>
        <div class="div_age">
            <p class="entete">age</p>
            <p id="info"><?= age($personne['dateDeNaissance']) ?> ans</p>
        </div>
        <div class="div_loca">
            <p class="entete">localisation</p>
            <p id="info"><?= esc($personne['localisation']) ?></p>
        </div>
    </section>

    <section class="autre">
        <div class="expertise" id="expertise">
            <p class="entete2">Me concernant</p>
            <p class="perso">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?= nl2br(esc($personne['meConcernant'])) ?></p>
            <div class="container"></div>
        </div>
        <div class="divLoisir">
            <p class="entete2">Loisirs</p>
            <div class="loisir">
                <?php foreach ($loisirs as $loisir): ?>
                <figure class="interet">
                    <img src="<?= esc($loisir['urlImage']) ?>" alt="<?= esc($loisir['libelle']) ?>">
                    <figcaption><?= esc($loisir['libelle']) ?></figcaption>
                </figure>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
    <div class="light" id="light"></div>
</div>