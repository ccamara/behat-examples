#Source https://github.com/openscholar/openscholar/edit/SCHOLAR-3.x/openscholar/behat/features/cancel_redirects.feature

Feature:
  Test the redirect of the "cancel" button on node forms.

  @api @first
  Scenario: Test redirect when user creates a page.
    Given I am logging in as "john"
      And I visit "john"
      And I visit "john/node/add/page"
      And I click "Cancel"
     Then I should be on "john"
