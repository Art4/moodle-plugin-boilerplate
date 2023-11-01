<?php
/**
 * Version metadata for the local_moodle_plugin plugin.
 *
 * @package   local_moodle_plugin
 * @copyright 2023, Artur Weigandt
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

/** @var \stdClass $plugin */
$plugin->component = 'local_moodle_plugin';
$plugin->version = 2023102601;
$plugin->release = '0.1.1';

$plugin->requires = 2023042403.00; // Moodle 4.2
// Available as of Moodle 3.9.0 or later.
$plugin->supported = [
    402,
    403,
];
$plugin->incompatible = 404; // Available as of Moodle 3.9.0 or later.
$plugin->maturity = MATURITY_ALPHA; // one of: MATURITY_ALPHA, MATURITY_BETA, MATURITY_RC, MATURITY_STABLE

$plugin->dependencies = [];
