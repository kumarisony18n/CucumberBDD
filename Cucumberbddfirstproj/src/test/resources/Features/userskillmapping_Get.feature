#Author: kumariony18n@gmail.com
#Date: 02/19/2021
Feature: feature to get Userskill mappings for authorized user

  # Only the required fields are displayed in the response body,JSON schema is validated
  Scenario: Get all UserSkill mappings
    Given User is on Get request
    When User sends the request
    Then user is able to read all userskill mappings with success status code

  Scenario: Get mapping for specific userskill
    Given User is on Get request for specific userskill
    When User sends the request for specific userskill
    Then user is able to read specific userskill mapping with success status code

  Scenario: Get mapping for specific userskill as alphanumeric value
    Given User is on Get request to check alphanumeric value for userskill
    When User sends the request with alphanumeric value
    Then Record is not displayed with status code for bad request

  Scenario: Get all users and all skills
    Given User is on Get request with endpoint
    When User sends the request
    Then User is able to read all users and skills with success status code

  Scenario: Get User and his Skills
    Given User is on Get request with endpoint
    When User sends the request with valid userid
    Then User is able to read user and his skills with success status code

  Scenario: Get Users of a particular skill
    Given User is on Get request with endpoint
    When User sends the request with valid skillid
    Then User is able read users for a specific skill with success status code
