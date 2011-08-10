Feature: User unzips a zipped file
  In order to unzip a zip file without hassle
  As a user
  I want to be able to use minizip

  Scenario: Unzip a file into a directory
    When I run `minizip extract ../../features/support/examples/zip_file.zip extracted_zip_directory`
    Then the following directories should exist:
      | extracted_zip_directory |
      | extracted_zip_directory/zoho_sikuli_demo_mac.sikuli |
    And the exit status should be 0

  Scenario: Unzip a non-existent file
    When I run `minizip extract non_existent.zip extracted_zip_directory`
    Then the output should contain "non_existent.zip doesn't exist"
    And the exit status should be 0
