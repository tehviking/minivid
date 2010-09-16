Feature: Upload a video
  In order to share a video with friends
  As a user
  I want to upload a video to minivid

Scenario: See the upload page
  Given I go to the home page
  Then I should see "upload a video"

Scenario: Confirm a video is uploaded
    Given a video
    When I click "Play"
    Then I should see "Playing"
