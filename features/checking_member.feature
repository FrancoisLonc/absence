Feature: Checking a member
  As an administrator
  I can mark a member as absent
  in order to retain the information

Scenario: Listing presence for a date
  Given I am an administrator
  When I enter a date
  Then I see their attendance status for the day
