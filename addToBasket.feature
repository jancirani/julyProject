Feature:basket functionality

  i would like to add item to the basket in amazon website
  so that i can add the item

  Scenario Outline: add to basket
    Given customer is on the home page
    When search the "<product>"
    Then result should be shown
    When i select the first product
    Then user should navigate to detailed page
    When i click on add to basket
    Then the items to be add the basket

   Examples:
    |product|
    |  sony |

    Scenario: empty basket
      Given i am on the home page
      And i am not loggeedin
      Then basket should be empty

      Scenario: anonomous user/unauthorized user
        Given i am on the home page
        When i am not logged in
        Then basket should be empty

        Scenario:
          Given i am on the home page
          When i am not logged in
          And i can add the item
          Then there is a item in the basket
          And i  can closed the window


  Scenario: authorized user
    Given i am on the home page
    When i am  logged in
    Then basket should be empty

  Scenario:
    Given i am on the home page
    When i am  logged in
    And i can add the item
    Then there is a item in the basket
    And i can closed the window

  Scenario: empty basket
    Given i am on the home page
    And i am  loggeedin
    Then i can view the existing item in the basket






