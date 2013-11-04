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

Feature: Listing members
  As an administrator
  I can see the list of members
  in order to verify their attendance

Scenario: listing all members
  Given I am an admin
  When I go to /members
  Then I see all members
