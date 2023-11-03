#!/bin/bash

PROJECT_FOLDER="$( cd "$(dirname "$0")/.." ; pwd -P )"

# Install moodle-plugin-ci
if [ ! -d $PROJECT_FOLDER/moodle-plugin-ci ]; then
    composer create-project moodlehq/moodle-plugin-ci $PROJECT_FOLDER/moodle-plugin-ci ^4
fi

# Remove previous moodle folder
if [ -d $PROJECT_FOLDER/moodle-plugin-ci ]; then
    echo "Deleting moodle folder"
    # rm -r $PROJECT_FOLDER/moodle
    mv $PROJECT_FOLDER/moodle $PROJECT_FOLDER/moodle.deleteme
fi

# Install moodle
moodle-plugin-ci/bin/moodle-plugin-ci install --plugin $PROJECT_FOLDER/local_moodle_plugin --db-host=db --branch=MOODLE_402_STABLE --db-type=mariadb --moodle=moodle
