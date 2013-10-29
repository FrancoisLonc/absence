Feature: Listing members
  As an administrator
  I can see the list of members
  in order to verify their attendance

Scenario: listing all members
  Given I am an admin
  When I go to /members
  Then I see all members
