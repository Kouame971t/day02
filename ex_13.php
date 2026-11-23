<?php
function isPalindrome(string $str): bool
{
    $clean = mb_strtolower(preg_replace('/\s+/', '', $str));
    $reversed = implode('', array_reverse(mb_str_split($clean)));
    return $clean === $reversed;
}
