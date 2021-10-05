#!/bin/sh

rm -rf var/ vendor/ public/
ddev delete -yO
ddev start
ddev composer install
ddev exec vendor/bin/typo3 cache:warmup
