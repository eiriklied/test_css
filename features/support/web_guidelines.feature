Feature: Web guidelines
  In order to verify that my application follows postens css guidelines
  As a developer
  I want to check my applications styles

  @javascript
  Scenario: Web guidelines should be followed for dogs page
    Given the application is running at "localhost"
    Then the css guidelines should be followed for the following pages
      | page path     |
      | /             |
      | /produkter    |
      | /kundeservice |

  
  
  