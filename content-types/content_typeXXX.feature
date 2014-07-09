Feature:
As an admin I want to be able to create a content type XXX (Tests Content Type content-typeXXX (fields, permissions...))

@api @CTypes @content-typeXXX
Scenario Outline: Veryfies content creation permissions
   Given I am logged in as a user with the <granted-roles> role
    When I am on "node/add"
    Then I should see the text "Content Type"
    Then I should see the text "(Machine name: content_type)"

  Examples:
  | admin           |
