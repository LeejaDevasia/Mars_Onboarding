Feature: Profile

A short summary of the feature

@Login
Scenario: Test_Skill_1. Confirmation of Successful login with valid credentials
	Given Login with valid email address and password 
	Then the customer name should appear in the profile page 

	

	@AddEducation 
Scenario: Test_Skill_2. Add Education in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to Education tab in the profile
	And I create education details
	Then the new record for education should be created succesfully

@EditEducation 
Scenario Outline: Test_Skill_3. Edit Education in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to Education tab in the profile
	And I Edit '<College>','<Degree>' education details
	Then the existing record for education '<College>','<Degree>' should be updated succesfully 
	Examples: 
	| College | Degree |
	| MG      | Masters |
	
	@DeleteEducation 
Scenario: Test_Skill_4. Delete Education in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to Education tab in the profile
	And I delete education details
	Then the record for education should be deleted succesfully

	@ChangePassword 
	Scenario Outline: Test_Skill_5. Change Password in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to change passwrod in the profile
	And Update from '<oldPassword>', '<newPassword>'
	Then Password should be updated successfully 
	Examples: 
	| oldPassword | newPassword |
	| amal@here1   | amal@here  |

		@AddLanguage
Scenario Outline: Test_Skill_6. Add Language in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to language tab in the profile
	And I create language details with '<Language>'
	Then the new record for language should be created with '<Language>' succesfully
	Examples: 
	| Language | 
	| Hindi    | 

	@EditLanguage 
Scenario Outline: Test_Skill_7. Edit Laguage in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to language tab in the profile
	And I Edit '<Language>' details
	Then the existing record for '<Language>' should be updated succesfully 
	Examples: 
	| Language | 
	| English  | 
	| Spanish  | 
	

	@DeleteLanguage
Scenario: Test_Skill_8. Delete Language in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to language tab in the profile
	And I delete language details
	Then the record for language should be deleted succesfully


	@AddSkill
Scenario Outline: Test_Skill_9. Add Skill in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to Skill tab in the profile
	And I create skill details with '<skill>'
	Then the new record for skill should be created with '<skill>' succesfully
	Examples: 
	| skill | 
	| tech | 
	| Teaching | 
	@EditSkill
Scenario Outline: Test_Skill_10. Edit Skill in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to Skill tab in the profile
	And I Edit skill details with '<skill>'
	Then the existing record for '<skill>'  should be updated succesfully in skill
	Examples: 
	| skill | 
	| sceince | 
	| art   | 

	@DeleteSkill
Scenario Outline: Test_Skill_11. Delete Skill in profile details of the seller
	Given I succesfully logged in to website 
	When I navigate to Skill tab in the profile
	And I Delete skill details
	Then the  last record in skill should be deleted succesfully
	