@SignOut
  Feature: signing out


    Scenario Outline: go to registration
      Given user goes to login page
      And user provides username "<username>" and password "<password>"
      Then user logs in
      And user navigates to my operations
      When user clicks on manageCustomer
      Then user creates a customer

      Examples:
        |username|password|
        #|erolbilican|123456|
        |teamm_4  |3321asdf|

    Scenario: signing out from any user
      Given user clicks on current user
      Then user clicks on signOut button