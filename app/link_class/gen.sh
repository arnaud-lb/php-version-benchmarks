#!/bin/sh

NCLASSES=9999

(
    printf "<?php\n"
    for c in $(seq 1 $NCLASSES); do
        printf "class Base%04d {}\n" $c
        printf "class Class%04d extends Base%04d {}\n" $c $c
    done
) > early_bind.php

(
    printf "<?php\n"
    for c in $(seq 1 $NCLASSES); do
        printf "class Class%04d extends Base%04d {}\n" $c $c
    done
) > link.php

for c in $(seq 1 $NCLASSES);
    do printf "<?php\nclass Base%04d {}\n" "$c" > $(printf "Base%04d.php" $c)
done
