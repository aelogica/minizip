Feature: User uses minizip to zip up some files
  In order to zip some files properly
  As a user
  I want to be able to use minizip

  Scenario: Zip some files
    When I run `minizip files test_files ../../features/support/examples/test_files/test.txt ../../features/support/examples/test_files/test2.txt`
    Then a file named "test_files.zip" should exist
    And the exit status should be 0

  Scenario: Zip some files including a file that doesn't exist
    When I run `minizip files test_files ../../features/support/examples/test_files/test.txt ../../features/support/examples/test_files/test2.txt`
    Then a file named "test_files.zip" should exist
    And the exit status should be 0
