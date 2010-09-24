Feature: Home page
  In order to watch or upload videos
  As a user
  I want to visit the Minivid homepage

  Scenario: Homepage exists
    Given I am on the home page
    Then I should see "Minivid"

  Scenario: Top Videos
    Given I am on the home page
    Then I should see "Top 5 videos"

  Scenario: Categories
    Given I am on the home page
    Then I should see "60-Second Reviews"
	And I should see "Rapid Recipes"
	And I should see "Shoutouts"

  Scenario: Tags
    Given I am on the home page
    Then I should see "Top tags"
  
  
  
  
  
  
  
  
  
  
  
  

  
