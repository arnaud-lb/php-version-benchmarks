<?php

for ($i = 0; $i < 300; $i++) {
    $a = array_fill(0, 1000, 0);
    array_walk($a, function (&$value, $i) {
        $a = $i * 2;
        $value = $a;
    });
}
