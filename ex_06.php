<?php
function getFirstWord(string $sentence): string
{
    $words = preg_split('/\s+/', trim($sentence));
    return $words[0] ?? "";
}
