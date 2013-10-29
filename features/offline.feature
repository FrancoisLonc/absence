Feature: Using application offline
  As an administrator
  I can use the application in offline mode
  in order to use it at any time

Scenario: Detecting disconnection
  Given I am an administator
  When the device is disconnected
  Then the application notifies the disconnection

