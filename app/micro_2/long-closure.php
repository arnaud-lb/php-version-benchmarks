<?php

class EventDispatcher {
    public $eventListeners = [];
}

function watch(EventDispatcher $eventDispatcher): void {
    $a = array_fill(0, 1000, []);

    $eventDispatcher->eventListeners[] = function () {
        $a = 1;
    };
}

$eventDispatcher = new EventDispatcher();

for ($i = 0; $i < 20000; $i++) {
    watch($eventDispatcher);
}

printf("Peak memory: %.02fMiB\n", memory_get_peak_usage() >> 20);
