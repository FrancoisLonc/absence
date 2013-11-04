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

Feature: Using application offline
  As an administrator
  I can use the application in offline mode
  in order to use it at any time

Scenario: Detecting disconnection
  Given I am an administator
  When the device is disconnected
  Then the application notifies the disconnection

