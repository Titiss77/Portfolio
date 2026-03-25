<!DOCTYPE html>
<html lang="fr">

<head>
    <title>CV de Mathis FRANCES--LAVILLAUROY</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/css/cv_style.css') ?>">
</head>

<body>
    <header>
        <h1>CV de Mathis FRANCES--LAVILLAUROY</h1>
    </header>

    <section>
        <div class="photo">
            <img src="<?= base_url('images/me.png') ?>" alt="Ma photo de profil">
        </div>
        <div class="prez">
            <h2>Qui suis-je ?</h2>
            <p>Diplômé du Baccalauréat et actuellement en BTS SIO.</p>
            <a href="<?= base_url('pdf/CV- Mathis Frances--Lavillauroy.pdf') ?>" download>Mon CV au format PDF</a>
        </div>
        <div class="contact">
            <h2>Informations de contact</h2>
            <div class="contact-flex">
                <p>Nom : </p>
                <p><?= esc($contact['nom']) ?></p>
            </div>
            <div class="contact-flex">
                <p>Adresse : </p>
                <p><?= esc($contact['adresse']) ?></p>
            </div>
            <div class="contact-flex">
                <p>Téléphone :</p>
                <p><?= esc($contact['tel']) ?></p>
            </div>
            <div class="contact-flex">
                <p>Mail : </p>
                <p><a href="mailto:<?= esc($contact['email']) ?>"><?= esc($contact['email']) ?></a></p>
            </div>
            <div class="contact-flex">
                <p>Permis :</p>
                <p><?= esc($contact['permis']) ?></p>
            </div>
            <div class="social">
                <a href="<?= esc($lienExternes['url']) ?>">
                    <img src="<?= base_url('images/cv/lk.png') ?>" alt="Logo Lk">
                </a>
            </div>
        </div>
    </section>

    <section>
        <h2>Expériences professionnelles</h2>
        <?php foreach ($experiences as $exp): ?>
        <div class="exp">
            <div class="exp-logo">
                <a href="#"><img src="<?= base_url(esc($exp['chemin_image'])) ?>" alt="<?= esc($exp['libelle']) ?>"
                        class="chemin_image"></a>
            </div>
            <div class="exp-info">
                <h3 class="libelle"><?= esc($exp['libelle']) ?></h3>
                <h4 class="nom_entreprise"><?= esc($exp['nom_entreprise']) ?></h4>
                <h4 class="periode"><?= esc($exp['periode']) ?></h4>
            </div>
            <div class="exp-desc">
                <p class="description"><?= esc($exp['description']) ?></p>
            </div>
        </div>
        <?php endforeach; ?>
    </section>

    <section>
        <h2>Formation</h2>
        <?php foreach ($formations as $form): ?>
        <div class="exp">
            <div class="exp-logo">
                <a href="#"><img src="<?= base_url(esc($form['CheminImg'])) ?>" alt="Logo école"></a>
            </div>
            <div class="exp-info">
                <h3 class="nom_etablissement"><?= esc($form['nom_etablissement']) ?></h3>
                <h4 class="periode"><?= esc($form['periode']) ?></h4>
            </div>
            <div class="exp-desc">
                <p><?= esc($form['description']) ?></p>
            </div>
        </div>
        <?php endforeach; ?>
    </section>

    <section>
        <h2>Compétences</h2>
        <h3 class="h3gauche">Professionnelles</h3>
        <div class="comp">
            <p>HTML / CSS</p>
            <div class="conteneur-barre"><span class="barre c100"></span></div>
        </div>
        <div class="comp">
            <p>MySQL</p>
            <div class="conteneur-barre"><span class="barre c100"></span></div>
        </div>
        <div class="comp">
            <p>JavaScript</p>
            <div class="conteneur-barre"><span class="barre c70"></span></div>
        </div>
        <div class="comp">
            <p>Python</p>
            <div class="conteneur-barre"><span class="barre c100"></span></div>
        </div>

        <h3 class="h3gauche">Personnelles</h3>
        <div class="comp2">
            <p>Créativité</p>
            <p>90%</p>
            <div class="conteneur-barre2"><span class="barre c90"></span></div>
        </div>
        <div class="comp2">
            <p>Adaptation</p>
            <p>90%</p>
            <div class="conteneur-barre2"><span class="barre c90"></span></div>
        </div>
        <div class="comp2">
            <p>Sérieux</p>
            <p>95%</p>
            <div class="conteneur-barre2"><span class="barre c95"></span></div>
        </div>
        <div class="comp2">
            <p>Pédagogie</p>
            <p>95%</p>
            <div class="conteneur-barre2"><span class="barre c95"></span></div>
        </div>
        <div class="comp2">
            <p>Utilisation de l'IA</p>
            <p>70%</p>
            <div class="conteneur-barre2"><span class="barre c70"></span></div>
        </div>
    </section>

    <section>
        <h2>Centres d'intérêt</h2>
        <?php foreach ($loisirs as $loisir): ?>
        <figure class="interet">
            <img src="<?= base_url(esc($loisir['urlImage'])) ?>" alt="<?= esc($loisir['libelle']) ?>">
            <figcaption><?= esc($loisir['libelle']) ?></figcaption>
        </figure>
        <?php endforeach; ?>
    </section>
</body>

</html>