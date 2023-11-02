@local @local_moodle_plugin
Feature: Using the homepage
  In order to be able to use the homepage
  As admin
  I need to be able to read my username

  Scenario: Check if I can read my username
    When I log in as "admin"
    And I am on site homepage
    Then I should see "admin"
