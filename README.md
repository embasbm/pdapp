## Command-line usage

``` sh
# 1. Get the code to local
$ git clone git@github.com:embasbm/pdapp.git
$ cd pdapp
# 2. Start Vagrant box
$ vagrant up
# 3. Configure ssh keys between host and Vagrant machine
$ vagrant ssh-config >> ~/.ssh/config
# 5. Edit **~/.ssh/config**:, change *Host default* (first line) to *Host vagrant*
# 6. Deploy code to Vagrant machine
$ bundle exec cap production deploy
# 7. Connect to Vagrant
$ vagrant ssh
  * A. $ cd apps/current
  * B. $ gem install bundler
  * C. $ rbenv rehash
  * D. $ bundle
  * E. $ bundle exec rspec
  # Rake Task: a file **public/scraped_data.json** which contains fetched data about apps.
  * F. $ bundle exec rake scrape:app_data spec/fixtures/files/ids.json
  # Rails app: http://localhost:3000 should be available on browser.
  * G. $ bundle exec rails server -b 0.0.0.0
```

## Task
The task is to create a ruby script that collects data from Google Play store for a small subset of apps with ability to deploy the script to locally running Vagrant box.

## User Stories
* As a user I want to provide a json file with just the app ids as a source for which apps will be scraped.
* As a user I want to run ​rake scrape:app_data​ Rake task to start the collection process
* As a user I want to see collected data in JSON format stored on in a file.
* As a user I can deploy script to local vagrant box using c​ ap production deploy

## Technical guideline
* Source for getting data for each app - example for angry birds id (com.rovio.angrybirds) https://play.google.com/store/apps/details?id=com.rovio.angrybirds
* Visit app page, parse and extract ​App name a​ nd P​ ublisher name​ data.
* Store parsed data on a JSON file locally.
* Setup a vagrant box with Ubuntu
* Add ability to deploy ruby script to vagrant box.
* Don’t include vagrant box in source. Use one of the publically hosted ones.
* You can use any vagrant provisioners like chef, ansible or shell commands to setup the vagrant box.

## Delivery
* Use github to store the source code
* Provide the github link on task completion along with any additional information needed to run the application.

## Guidelines
* Commit often while developing.
* Use your favorite test framework to test the application ex. (Rspec, Test-Unit, Minitest)
* Consider edge cases GP service availability, incorrectly passed source app ids, etc.
* Develop the project using the best software development practices - Quality of the code is the key.
* Provide any additional setup instructions in github readme.
￼
