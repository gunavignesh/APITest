@test
Feature: Verify the API
  Verify the give API's are working fine
  
Background:
* url 'http://localhost:8085'

  Scenario: Get the specific ID details

    Given path '/student/list'
    When method GET
    Then status 200
    And match response[0] contains {firstName:'Vernon'}

    