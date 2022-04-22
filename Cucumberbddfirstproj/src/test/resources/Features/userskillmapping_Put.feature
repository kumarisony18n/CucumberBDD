#Author: kumariony18n@gmail.com
#Date: 02/19/2021
Feature: feature to update Userskill mappings

  # Only the required fields are displayed in the response body,JSON schema is validated.
  Scenario: Update Userskill mapping for authorized user
    Given User is on put request with endpoint for specific userskill
    When User sends the request to modify the record with valid inputs
    Then record is successfully updated with success status code

  Scenario: Update Userskill mapping for unauthorized user
    Given User is on put request with endpoint
    When User sends the request to update with invalid inputs
    Then failed to update the record with status code for bad request
