Feature: Slides creation.
In order to let visitors know about the most important issues on the web,
As an editor,
I need to create and manage a slides content type.

  @api @CTypes @ct-slides
  Scenario Outline: Veryfies content creation permissions
   Given I am logged in as a user with the <grantedRoles> role
    When I am on "node/add"
    Then I should see the text "slides"
     And I should see the text "(Machine name: slides)"

    Examples:
    | grantedRoles    |
    | admin           |
    | editor          |

  @api @CTypes @ct-slides
  Scenario Outline: Veryfies content creation permissions
   Given I am logged in as a user with the <excludedRoles> role
    When I am on "node/add"
    Then I should not see the text "slides"
     And I should not see the text "(Machine name: slides)"

    Examples:
    | grantedRoles    |
    | admin           |
    | editor          |
