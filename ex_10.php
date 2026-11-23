<?php
function fullname(string $first, string $last, bool $initialOnly = false): string
{
    if ($initialOnly) {
        $last = mb_substr($last, 0, 1);
    }
    return trim($first . " " . $last);
}
