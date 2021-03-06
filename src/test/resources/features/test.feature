@execute
Feature: Google search

  Background:
    Given use elements/page.objects

  Scenario: Search test automation
    When user navigates to www.google.com
    And enters text test automation to inputField
    And clicks element submitSearch
    And clicks first element googleResult
    Then element wikiH1 contains text Test automation
    And waits 2 seconds

  Scenario: Search zurich airport
    When user navigates to http://www.google.com
    And enters text zurich airport to inputField
    And clicks element googleLogo
    And clicks element submitSearch
    And clicks first element googleResult
    Then element id=flight-plan is displayed
    And waits 2 seconds

  Scenario Outline: Parameterized search
    When user navigates to www.google.com
    And enters text <textToEnter> to inputField
    And clicks element submitSearch
    Then element googleResult contains text <textToEnter>
    And waits 2 seconds
    Examples:
    | textToEnter |
    | pandas      |
    | giraffes    |
    | dogs        |