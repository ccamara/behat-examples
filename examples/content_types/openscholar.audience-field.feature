# Source: https://github.com/openscholar/openscholar/edit/SCHOLAR-3.x/openscholar/behat/features/audience-field.feature

Feature:
  Testing the appearance of OG audience field

  @api @first
  Scenario: Check that the OG audience field will be shown when editing content.
    Given I am logging in as "john"
      And I visit "john/blog"
      And I click "First blog"
      And I click "Edit"
     Then I should not see "Groups audience"
