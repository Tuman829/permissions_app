# README
All instructions give terminal commands unless marked with a #
To Setup: 
Gem install bundler
bundle 
rake db:migrate
rake db:seed

To test:
rspec --tag ~visual 
#(this will run all controller tests)

rspec 
#This will run all tests. This includes a test that runs using selenium web driver to open a browser. For this to work https://github.com/mozilla/geckodriver/releases must be installed and added to the Path 

To Run:
Rails s

