<?= $this->extend('templates/layout') ?>

<?= $this->section('content') ?>

<div class="formulaire">
    <?php if (session()->getFlashdata('success')): ?>
    <p style="color: green; text-align: center; font-weight: bold;">
        <?= session()->getFlashdata('success') ?>
    </p>
    <?php endif; ?>

    <?php if (session()->getFlashdata('errors')): ?>
    <div style="color: red; text-align: center; margin-bottom: 15px;">
        <?php foreach (session()->getFlashdata('errors') as $error): ?>
        <p><?= esc($error) ?></p>
        <?php endforeach; ?>
    </div>
    <?php endif; ?>

    <form action="<?= base_url('contact/submit') ?>" method="post">
        <?= csrf_field() ?> <h2>Formulaire de Contact</h2>

        <div class="sexe-container">
            <label>Sexe :</label>
            <label><input type="radio" name="sexe" value="1" <?= old('sexe') == '1' || !old('sexe') ? 'checked' : '' ?>>
                Homme</label>
            <label><input type="radio" name="sexe" value="2" <?= old('sexe') == '2' ? 'checked' : '' ?>> Femme</label>
        </div>

        <label for="nom">Nom :</label>
        <input type="text" name="nom" size="20" value="<?= old('nom') ?>" required>

        <label for="prenom">Prénom :</label>
        <input type="text" name="prenom" size="20" value="<?= old('prenom') ?>" required>

        <label for="mail">Adresse mail :</label>
        <input type="email" name="mail" size="20" value="<?= old('mail') ?>" required>

        <label for="texte">Message :</label>
        <textarea class="messageBox" name="texte" rows="5" required><?= old('texte') ?></textarea>

        <p>
            <input type="submit" value="Envoyer">
            <input type="reset" value="Annuler">
        </p>
    </form>
</div>
<?= $this->endSection() ?>