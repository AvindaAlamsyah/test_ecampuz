<?php
for ($i = 1; $i <= 50; $i++) {
    if ($i % 3 == 0 or $i % 5 == 0) {
        if ($i % 5 == 0) {
            if ($i % 3 == 0 and $i % 5 == 0) {
                echo "FooBar<br/>";
            } else {
                echo "Bar<br/>";
            }
        } else {
            echo "Foo<br/>";
        }
    } else {
        echo "$i<br/>";
    }
}
