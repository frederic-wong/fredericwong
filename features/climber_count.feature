Feature: Avid Monitoring

  Scenario: Visiting the Climber Count page
    Given there are some climbers
    When I visit the climber count page
    Then I should see the number of climbers
