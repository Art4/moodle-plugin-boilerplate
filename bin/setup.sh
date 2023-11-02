#!/bin/bash

composer create-project moodlehq/moodle-plugin-ci ./moodle-plugin-ci ^4

# Install moodle-plugin-ci
moodle-plugin-ci/bin/moodle-plugin-ci install --plugin ./local_moodle_plugin --db-host=db --branch=MOODLE_402_STABLE --db-type=mariadb --moodle=moodle
