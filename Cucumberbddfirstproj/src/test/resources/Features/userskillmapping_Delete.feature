#Author: kumariony18n@gmail.com
#Date: 02/19/2021
Feature: feature to delete Userskill mappings

  # Only the required fields are displayed in the response body,JSON schema is validated.
  Scenario: Delete Userskill mapping for authorized user
    Given User is on delete request with endpoint for specific userskill
    When User sends the request to delete the record with valid inputs
    Then record is successfully deleted with success status code

  Scenario: Delete Userskill mapping for unauthorized user
    Given User is on delete request with endpoint
    When User sends the request to delete with invalid inputs
    Then failed to delete the record with status code for bad request
