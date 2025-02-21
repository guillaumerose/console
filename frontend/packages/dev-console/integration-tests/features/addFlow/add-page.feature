@add-flow
Feature: Add page on Developer Console
              As a user, I should be able select a way to create an Application, component or service from one of the options provided on Add page

    
        Background:
            Given user is at developer perspective
              And user has created or selected namespace "aut-add-page"
              And user has installed OpenShift Serverless Operator
              And user has installed OpenShift Pipelines operator
              And user is at Add page

        
        @regression
        Scenario: Getting started resources on Developer perspective: A-11-TC01
             Then user will see Getting started resources
              And user will see Create Application using Samples
              And user will see Build with guided documentation
              And user will see Explore new developer features


        @smoke
        Scenario: Options to create an Application, Component or Service: A-11-TC02
             Then user will see "Developer Catalog" card
              And user will see "Git Repository" card
              And user will see "Container images" option
              And user will see "Pipelines" option
              And user will see "Samples" option
              And user will see "From Local Machine" card
              And user will see "Serverless" card
        
        
        @regression
        Scenario: Developer Catalog option to create an Application, Component or Service: A-11-TC03
             Then user will see "All Services" option
              And user will see "Database" option
              And user will see "Operator Backed" option
              And user will see "Helm Chart" option
              And user will see "Event Source" option

        
        @regression
        Scenario: Git Repository option to create an Application, Component or Service: A-11-TC04
             Then user will see "From Git" option
              And user will see "From Devfile" option
              And user will see "From Dockerfile" option

        
        @regression
        Scenario: From Local Machine option to create an Application, Component or Service: A-11-TC05
             Then user will see "Import YAML" option
              And user will see "Upload JAR file" option

        
        @regression
        Scenario: Details Toggle on: A-11-TC06
             When user enable Details toggle
             Then user will see label Details on
              And user will see description of each option on each card


        @regression
        Scenario: Details Toggle off: A-11-TC07
             When user disable Details toggle
             Then user will see label Details off
              And user will not see description of option on cards

        @regression
        Scenario: Hide Getting Started Resources from View: A-11-TC08
            Given getting started resources is not hidden from view
             When user clicks on kebab menu
              And user selects Hide from view option
             Then user will not see Getting started resources card

        
        @regression
        Scenario: Show Getting Started Resources: A-11-TC09
            Given getting started resources is hidden from view
             When user clicks on Show getting started resources link
             Then user will see Getting started resources card
          
     
        @regression
        Scenario: Close Show Getting Started Resources link: A-11-TC10
            Given getting started resources is hidden from view
             When user clicks on close Show getting started resources link
             Then user will not see Show getting started resources link

          
        @regression @manual
        Scenario: Getting Started Resources card when all Quick Starts have been completed: A-11-TC11
            Given user has completed all Quick Starts
             Then user will not see Build with guided documentation at Developer perspective on getting started resources card
              And user will not see Build with guided documentation at Administrator perspective on getting started resources card
