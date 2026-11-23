<?php
function addSuffix(string $str, string $suffix = "..."): string
{
    if (!str_ends_with($str, $suffix)) {
        $str .= $suffix;
    }
    return $str;
}
