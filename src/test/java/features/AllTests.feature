Feature: All Tests
  Scenario: Check that Sign Up Scenario works successfully
    Given User visits home page to sign up
    When User clicks on Sign Up Button
    When User inputs name, email, password, confirm password and selects a role
    When User clicks submit sign up button
    Then User receives a sign up success message

  Scenario: Admin approves a new user
    Given Admin visits home page to approve a user
    When Admin clicks on login button to approve a user
    When Admin logins with email and password to approve a user
    When Admin visits Admin Panel to approve a user
    When Admin clicks on New Accounts tab
    Then Admin approves the first new user

  Scenario: User without account attempts to use encryption
    Given User visits home page
    When User selects encryption
    Then Login popup appears

  Scenario: User without account attempts to use decryption
    Given User visits home page
    When User selects decryption
    Then Login popup appears

  # Use employee for this test - employee accounts are always available, ensuring test consistency here
  Scenario: User performs role change
    Given User visits home page
    When Employee logs in
    Then User cannot click admin panel

  Scenario: Admin performs role change
    Given Admin visits home page to log in
    When Admin logs in
    When Admin goes to edit role
    Then Role is edited

  Scenario: User encrypts file
    Given User visits home page
    When Employee logs in
    When User selects encryption
    When User uploads unencrypted file
    When User enters correct encryption key
    Then User can encrypt file

  Scenario: User decrypts file
    Given User visits home page
    When Employee logs in
    When User selects decryption
    When User uploads encrypted file
    When User enters correct decryption key
    Then User can decrypt file

  Scenario: User encrypts file with incorrect key
    Given User visits home page
    When Employee logs in
    When User selects encryption
    When User uploads unencrypted file
    When User enters incorrect encryption key
    Then User cannot encrypt file

  Scenario: Admin views admin-uploaded file
    Given Admin visits home page to log in
    When Admin logs in
    When Admin panel Resources tab is selected
    Then Admin-uploaded files are visible

  Scenario: Employee views admin-uploaded file
    Given User visits home page
    When Employee logs in
    When Admin panel Resources tab is selected
    Then Admin-uploaded files are visible

  Scenario: User views admin-uploaded file
    Given User visits home page
    When User logs in
    Then User cannot click admin panel
