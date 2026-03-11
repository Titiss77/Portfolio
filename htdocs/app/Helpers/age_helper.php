<?php
if (!function_exists('age')) {
    function age($birthDate) {
        $birthDate = new DateTime($birthDate);
        $today = new DateTime();
        return $today->diff($birthDate)->y;
    }
}