Feature: booking

  @register @positive @aserbu @1
  Scenario Outline: verify that user is able to register
    Given user is on 'Home' page
    And user clicks on 'registerButton'
    Then user is on 'Register' page
    And  user completes the 'mailInput' field with '<email>' value
    And user clicks on 'getStartedButton'
    When  user completes the 'password1Input' field with '<password>' value
    And  user completes the 'password2Input' field with '<password>' value
    And user clicks on 'createAccountButton'
    Then user is registered
    Examples:
      | email              | password |
      | atftest10@mail.com | test1234 |


  @register @negative @aserbu @2
  Scenario Outline: verify that user is not able to register while providing invalid data
    Given user is on 'Home' page
    And user clicks on 'registerButton'
    Then user is on 'Register' page
    And user fills in duplicate account mail
    And user clicks on 'getStartedButton'
    Then user is warned about duplicate mail
    And  user completes the 'mailInput' field with '<email>' value
    And user clicks on 'getStartedButton'
    When user fills in different passwords
    Then user is warned about password mismatch
    Examples:
      | email              | password |
      | atftest09@mail.com | test1234 |
