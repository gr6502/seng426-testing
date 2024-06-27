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

  Scenario: User performs role change
    Given User visits home page
    When User logs in
    Then User cannot click admin panel

  Scenario: Admin performs role change
    Given Admin visits home page to log in
    When Admin logs in
    When Admin goes to edit role
    Then Role is edited
