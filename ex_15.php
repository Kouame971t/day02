<?php
function formatTemplate(string $template, array $replacements): string
{
    $map = [];
    foreach ($replacements as $key => $value) {
        $map["[" . $key . "]"] = (string) $value;
    }
    return strtr($template, $map);
}
