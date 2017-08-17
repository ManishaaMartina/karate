Feature: employee test script

Background:
* url baseUrl



Scenario: get the 4th employee by id
* def id = 4
Given path '/employees/'+id
When method get
Then status 200



Scenario: update the 3rd employee
* def updateemployee =
"""
{
 "address": "coimbatore",
 "designation": "sr. software eng.",
 "email": "john2@john.com",
 "empname": "JOHN BOSE",
 "id": 0,
 "phone": "9876543210"
}
"""
* def id = 3
Given path '/employees/'+id
And request updateemployee
When method put
Then status 200




Scenario: create and retrieve an employee

* def newemployee =
"""
{
 "address": "karur",
 "designation": "software eng.",
 "email": "brighty@john.com",
 "empname": "brighty",
 "id": 0,
 "phone": "1234567890"
}
"""

Given path '/employees'
And request newemployee
When method post
Then status 200