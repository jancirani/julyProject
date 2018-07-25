Feature:liggin functionality
  As a user
  I want to loggin to the amazon website
  so that i can benenift of loggin functionality
  Scenario:valid loggin details
  Given i am   on the sighin page
  When i enter the loggin details
  |emailid          |password|
  |qajanci@gmail.com|Sarasasi|
  Then i should loggin successfully

Scenario:invalid loggin details
    Given i am  on the sighin page
    When i enter  invalid details
      |emailid            |password       |
      |qajanci123@gil.com  |Sarasas234234i|
    Then i should remain on the same page
     And i see an  error message displayed
      """invalid emailand password"""

  Scenario:
    Given i am on the sighin page
    When i click the continue button
    Then i stats on the same page

