<?php
function age($birthDate) {
    $birthDate = new DateTime($birthDate);
    $today = new DateTime();
    $age = $today->diff($birthDate)->y;
    return $age;
}
?>