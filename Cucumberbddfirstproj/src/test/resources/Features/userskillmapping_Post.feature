#Author: kumariony18n@gmail.com
#Date: 02/19/2021
Feature: feature to create Userskill mappings

  # Only the required fields are displayed in the response body,JSON schema is validated.UserId and SkillId should be present in the database
  Scenario: Create Userskill mapping for authorized user
    Given User is on post request with endpoint
    When User sends the request with valid inputs
    Then record is successfully created with success status code

  Scenario: Create Userskill mapping for unauthorized user
    Given User is on post request with endpoint
    When User sends the request with invalid inputs
    Then failed to create the record with status code for bad request
