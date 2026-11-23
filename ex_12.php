<?php
function countVowels(string $str): int
{
    return preg_match_all('/[aeiouy]/i', $str);
}
