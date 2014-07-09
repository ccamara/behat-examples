# Source: http://drupalwatchdog.com/2/2/behat-mink

@javascript

Scenario: Successfully submit feedback when required fields are filled out
  Given I am on "/"
  When I follow "Contact us"
     And I fill in the following:
     |Your name            |Test User                            |
     |Your e-mail address  |visitor@example.com                  |
     |Subject              |Great new site                       |
     |Message              |I especially liked the animated gif! |
    And I press "Send message"
  Then I should see "Your message has been sent"
