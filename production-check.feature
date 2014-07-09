Feature: Slides creation.
In order to have a site ready to deploy
As developer,
I need to check everything is ready.

  @api @deployment
  Scenario: Check registry rebuild is disabled.
    Given I am logged in as a user with the "administrator" role
    And I go to "/admin/appearance"
    Then I should not see ""
