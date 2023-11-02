<?php
namespace local_moodle_plugin;

/**
 * This is a simple test class.
 *
 * @package local_moodle_plugin
 */
class sample_test extends \basic_testcase {
    public function test_equals(): void {
        $a = 1 + 2;

        $this->assertEquals(3, $a);
    }
}
