# Copyright François Lonc 2013
#
# francois_nant@yahoo.fr
#
# The fact that you are presently reading this means that you have had
# knowledge of the CeCILL license and that you accept its terms.
#
# This software is a computer program whose purpose is to register an event
# attendance.
#
#-------------------------------------------------------------------------

Feature: Checking a member
  As an administrator
  I can mark a member as absent
  in order to retain the information

Scenario: Listing presence for a date
  Given I am an administrator
  When I enter a date
  Then I see their attendance status for the day
