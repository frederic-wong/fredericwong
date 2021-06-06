Feature: The Gym Monitoring

  Scenario: Visiting The Gym Count page
    Given there are some gymers
    When I visit the gym count page
    Then I should see the number of gymers
