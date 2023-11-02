<?php
namespace locale_moodle_plugin;

class sample_test extends \basic_testcase {
    public function test_equals(): void {
        $a = 1 + 2;

        $this->assertEquals(3, $a);
    }
}
