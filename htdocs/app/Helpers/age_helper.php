<?php
if (!function_exists('calculate_age')) {
    function calculate_age($birthday) {
        $dob = new DateTime($birthday);
        $now = new DateTime();
        $difference = $now->diff($dob);
        return $difference->y;
    }
}