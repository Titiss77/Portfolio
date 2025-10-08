<!DOCTYPE html>
<html lang="fr">

<head>
<?php include('head.php');?>
    <title>Réponse</title>
</head>

<body>
    <?php
require_once 'serveur.php';
require_once 'header.php';

echo "<div class='page'><div class='catalogue'>";

// Sanitize and validate
$nom = isset($_POST['nom']) ? trim($_POST['nom']) : '';
$prenom = isset($_POST['prenom']) ? trim($_POST['prenom']) : '';
$mail = isset($_POST['mail']) ? filter_var(trim($_POST['mail']), FILTER_VALIDATE_EMAIL) : false;
$texte = isset($_POST['texte']) ? trim($_POST['texte']) : '';

$sexe = isset($_POST['sexe']) ? $_POST['sexe'] : 1;

if (!$mail) {
    $erreurs[] = "Adresse mail invalide.";
}

$ip = $_SERVER['REMOTE_ADDR'];

$affichageSexe = $sexe == 1 ? "Mr" : "Mme";

echo "<div class='reponse'><div class='texte'><p>Bonjour " . htmlspecialchars("$affichageSexe $nom $prenom") . ",</p><p>Nous vous remercions pour votre message :</p><p><em>" . nl2br(htmlspecialchars($texte)) . "</em></p><p>Nous vous contacterons à l'adresse : " . htmlspecialchars($mail) . "</p></div></div>";

try {
    $sql = "INSERT INTO contact (adressIp, date, sexe, nom, prenom, mail, message) 
            VALUES (?, NOW(), ?, ?, ?, ?, ?)";

    $stm = $connexion->prepare($sql);
    $stm->execute([$ip, $sexe, $nom, $prenom, $mail, $texte]);

    $connexion = null;
} catch (PDOException $e) {
    echo "Erreur : " . $e->getMessage();
}


echo "</div></div>";
?>
</body>

</html>