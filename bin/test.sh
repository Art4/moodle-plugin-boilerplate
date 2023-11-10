#!/bin/bash

PROJECT_FOLDER="$( cd "$(dirname "$0")/.." ; pwd -P )"
PLUGIN_CI=$PROJECT_FOLDER/moodle-plugin-ci/bin/moodle-plugin-ci
PLUGIN_FOLDER=$PROJECT_FOLDER/local_moodle_plugin

$PLUGIN_CI phplint $PLUGIN_FOLDER

# PHP Lint
$PLUGIN_CI phplint $PLUGIN_FOLDER

# PHP Copy/Paste Detector
$PLUGIN_CI phpcpd $PLUGIN_FOLDER

# PHP Mess Detector
$PLUGIN_CI phpmd $PLUGIN_FOLDER

# Moodle Code Checker
# $PLUGIN_CI phpcs --max-warnings 0 $PLUGIN_FOLDER

# Moodle PHPDoc Checker
$PLUGIN_CI phpdoc --max-warnings 0 $PLUGIN_FOLDER

# Validating
$PLUGIN_CI validate $PLUGIN_FOLDER

# Check upgrade savepoints
$PLUGIN_CI savepoints $PLUGIN_FOLDER

# Mustache Lint
$PLUGIN_CI mustache $PLUGIN_FOLDER

# Grunt
$PLUGIN_CI grunt --max-lint-warnings 0 $PLUGIN_FOLDER

# PHPUnit tests
$PLUGIN_CI phpunit --fail-on-warning $PLUGIN_FOLDER

# Behat features
$PLUGIN_CI behat --profile chrome $PLUGIN_FOLDER
