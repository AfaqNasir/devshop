Feature: DevShop Servers have LetsEncrypt enabled out of the box.
  In order to have a safe and secure website
  As devshop user
  I need to enable HTTPS as easily as possible

  @api
  Scenario: Server node has Certificate and HTTPS services enabled.

    Given I am logged in as a user with the "administrator" role
    When I am at "hosting/c/server_master"
    And I click "Edit"
    Then I should see "Let's Encrypt"
    Then I select the radio button "LetsEncrypt"
    Then I select the radio button "Staging"
    And I press "Save"
    When I run drush "hosting-tasks --force --fork=0 --strict=0"

    Then I click "Edit"
    Then I select the radio button "Apache"
    And I select the radio button "None" with the id "edit-services-certificate-type-null"
    And I press "Save"

    When I run drush "hosting-tasks --force --fork=0 --strict=0"
    Then print last drush output
