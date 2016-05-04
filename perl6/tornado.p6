sub shift(Str $str where $str.chars > 0) {
  $str.substr(1, $str.chars) ~ $str.substr(0, 1)
}
sub shift-and-print(Str $msg) {
  say $msg;  shift($msg)
}
my $text = prompt("Text: ");
my Int $num = +prompt("Lines: ");
$text = shift-and-print($text) for ^$num
