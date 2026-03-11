<div class="formulaire">
    <form action="<?= base_url('contact/reponse') ?>" method="post">
        <h2>Formulaire de Contact</h2>

        <div class="sexe-container">
            <label>Sexe :</label>
            <label><input type="radio" name="sexe" value="1" checked> Homme</label>
            <label><input type="radio" name="sexe" value="2"> Femme</label>
        </div>

        <label for="nom">Nom :</label>
        <input type="text" name="nom" size="20" required>

        <label for="prenom">Prénom :</label>
        <input type="text" name="prenom" size="20" required>

        <label for="mail">Adresse mail :</label>
        <input type="email" name="mail" size="20" required>

        <label for="texte">Message :</label>
        <textarea class="messageBox" name="texte" size="255" required></textarea>

        <p>
            <input type="submit" value="Envoyer">
            <input type="reset" value="Annuler">
        </p>
    </form>
</div>