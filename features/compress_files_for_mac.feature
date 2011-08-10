Feature: User uses minizip to zip up some files
  In order to zip some files properly
  As a user
  I want to be able to use minizip

  Scenario: Running minizip
    When I run `minizip print_os`
    Then the output should contain "USING OSX"
    And the exit status should be 0
