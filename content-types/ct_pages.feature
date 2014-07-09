Feature: Pages creation.
In order to let visitors know about the FVF,
As an editor,
I need to create and manage a page content type.

  Scenario: Create a node
    Given I am logged in as a user with the "editor" role
    When I am viewing an "article" node with the title "My article"
    Then I should see the heading "My article"

  Scenario: Create many nodes
    Given "page" nodes:
    | title    |
    | Page one |
    | Page two |
    And I am logged in as a user with the "administrator" role
    When I go to "admin/content"
    Then I should see "Page one"
    And I should see "Page two"

  Scenario: Create nodes with fields
    Given "article" nodes:
    | title                     | promote | body             |
    | First article with fields |       1 | PLACEHOLDER BODY |
    When I am on the homepage
    And follow "First article with fields"
    Then I should see the text "PLACEHOLDER BODY"

  Scenario: Create and view a node with fields
    Given I am viewing an "Article" node:
    | title | My article with fields! |
    | body  | A placeholder           |
    Then I should see the heading "My article with fields!"
    And I should see the text "A placeholder"

  Scenario: Create users
    Given users:
    | name     | mail            | status |
    | Joe User | joe@example.com | 1      |
    And I am logged in as a user with the "administrator" role
    When I visit "admin/people"
    Then I should see the link "Joe User"

  Scenario: Create a term
    Given I am logged in as a user with the "administrator" role
    When I am viewing a "tags" term with the name "My tag"
    Then I should see the heading "My tag"

  Scenario: Create nodes with specific authorship
    Given users:
    | name     | mail            | status |
    | Joe User | joe@example.com | 1      |
    And "article" nodes:
    | title          | author   | body             | promote |
    | Article by Joe | Joe User | PLACEHOLDER BODY | 1       |
    When I am logged in as a user with the "administrator" role
    And I am on the homepage
    And I follow "Article by Joe"
    Then I should see the link "Joe User"
