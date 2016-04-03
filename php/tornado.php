#!/usr/bin/env php
<?php
function shift($s) {
    return mb_substr($s, 1) . mb_substr($s, 0, 1);
}
$text = false;
while($text === false) {
    echo 'Enter some text:',"\n";
    $text = trim(fgets(STDIN));
    if($text === "") $text = false;
}
$default = mb_strlen($text)+1;
$count = false;
while($count === false) {
    echo 'Enter line amount (-1 for ∞, default: ',$default,'):',"\n";
    $count = intval(trim(fgets(STDIN)));
    if($count === 0)  $count = $default;
    if($count === -1) $count = PHP_INT_MAX;
    if($count < -1)   $count = false;
}
for($i = 0; $i < $count; $i++) {
    echo $text,"\n";
    $text = shift($text);
    if($i === PHP_INT_MAX) $i = 0;
}
exit(0);
