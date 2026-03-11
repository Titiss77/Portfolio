<div class='page'>
    <div class='catalogue'>
        <?php if (!$valide): ?>
        <p style="color: red;">Adresse mail invalide. Le message n'a pas été enregistré.</p>
        <?php else: ?>
        <?php $affichageSexe = ($sexe == 1) ? "Mr" : "Mme"; ?>
        <div class='reponse'>
            <div class='texte'>
                <p>Bonjour <?= esc("$affichageSexe $nom $prenom") ?>,</p>
                <p>Nous vous remercions pour votre message :</p>
                <p><em><?= nl2br(esc($texte)) ?></em></p>
                <p>Nous vous contacterons à l'adresse : <?= esc($mail) ?></p>
            </div>
        </div>
        <?php endif; ?>
    </div>
</div>