@mod @mod_reengagement
Feature: Teachers can create reengagment activity

  Scenario:
    Given the following "courses" exist:
      | fullname | shortname | summary                             | category | timecreated   | timemodified  |
      | Course 1 | C1        | Prove the attendance activity works | 0        | ##yesterday## | ##yesterday## |
    And the following "users" exist:
      | username | firstname | lastname | email                |
      | teacher1 | Teacher   | 1        | teacher1@example.com |
    And the following "course enrolments" exist:
      | course | user     | role           | timestart     |
      | C1     | teacher1 | editingteacher | ##yesterday## |
    And I log in as "teacher1"
    And I am on "Course 1" course homepage with editing mode on
    And I add a "Reengagement" to section "1" and I fill the form with:
      | Name        | Reengagement test       |
    Then I should see "Reengagement test"