## Task
The task is to create a ruby script that collects data from Google Play store for a small subset of apps with ability to deploy the script to locally running Vagrant box.

## User Stories
# As a user I want to provide a json file with just the app ids as a source for which apps will be scraped.
# As a user I want to run ​rake scrape:app_data​ Rake task to start the collection process
# As a user I want to see collected data in JSON format stored on in a file.
# As a user I can deploy script to local vagrant box using c​ ap production deploy

## Technical guideline
# Source for getting data for each app - example for angry birds id (com.rovio.angrybirds) https://play.google.com/store/apps/details?id=com.rovio.angrybirds
# Visit app page, parse and extract ​App name a​ nd P​ ublisher name​ data.
# Store parsed data on a JSON file locally.
# Setup a vagrant box with Ubuntu
# Add ability to deploy ruby script to vagrant box.
# Don’t include vagrant box in source. Use one of the publically hosted ones.
# You can use any vagrant provisioners like chef, ansible or shell commands to setup the vagrant box.

## Delivery
# Use github to store the source code
# Provide the github link on task completion along with any additional information needed to run the application.

## Guidelines
# Commit often while developing.
# Use your favorite test framework to test the application ex. (Rspec, Test-Unit, Minitest)
# Consider edge cases GP service availability, incorrectly passed source app ids, etc.
# Develop the project using the best software development practices - Quality of the code is the key.
# Provide any additional setup instructions in github readme.
￼
￼
