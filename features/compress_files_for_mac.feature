Feature: User uses minizip to zip up some files
  In order to zip some files properly
  As a user
  I want to be able to use minizip

  Scenario: Zip a single folder
    When I run `minizip zip_dir zoho_sikuli_demo_mac ../../features/support/examples/zoho_sikuli_demo_mac.sikuli`
    Then a file named "zoho_sikuli_demo_mac.zip" should exist
    And the exit status should be 0

  Scenario: Zip a folder that doesn't exist
    When I run `minizip zip_dir zoho_sikuli_demo_mac non_existent_folder`
    Then the output should contain "non_existent_folder doesn't exist"
    And the exit status should be 0

