<?php
require_once('serveur.php');
$debug = false; // Passe à false pour désactiver les var_dump()

if ($debug) {
    echo "<!-- DEBUG: Connexion -->";
    var_dump($connexion); // Vérification de la connexion PDO
}

echo "<style>:root {";

// Préparer et exécuter la requête SQL
$sql = "SELECT varName, varValue FROM themes";
$stm = $connexion->prepare($sql);
$stm->execute();

// Récupérer les résultats
$variables = $stm->fetchAll(PDO::FETCH_ASSOC);

if ($debug) {
    echo "<!-- DEBUG: Données récupérées -->";
    var_dump($variables); // Affichage des données récupérées
}

// Parcourir les variables et les afficher
foreach ($variables as $row) {
    $varName = htmlspecialchars($row['varName']); // Assurer que les noms de variables sont échappés
    $varValue = htmlspecialchars($row['varValue']); // Assurer que les valeurs sont échappées

    if ($debug) {
        echo "<!-- DEBUG: Traitement variable -->";
        var_dump($varName, $varValue); // Affichage de chaque variable traitée
    }

    // Affichage de la variable dans la règle CSS
    echo "$varName: $varValue;";
}

echo "}</style>";
?>
