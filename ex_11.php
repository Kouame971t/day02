<?php
function sanitize(string $input): string
{
    return strtolower(trim(strip_tags($input)));
}
