create rails new "appname" -T -d postgresql
- this creates the rails app without the Tests and with postgres

cd into the app file and initialize the directory
before ocmitting create amd move into a new branch
with 
-git checkout -b getting_started

git add..
commit your first commit

Then i created the repo in github and cloned it into my app

then push to to master with the branch so that it is set up on repo

add the gems 
'better_errors'- replaces the rails default error page. it is middle ware that provides a full stack source for inspecting, frams, variables, 

'quiet_assets'supresses the messages in devel. logs by turning off the assets pipeline log can be reneabled in the application.rb file with "config.quiet_assets = false"

'meta_requests' - helps with rails panel and dev tools

'pry-byebug' add step, next, finish and continue to pry so you can move throught he app

'binding_of_caller' allows you to use bindings from higher up the stack tp be called.  

'awesome_print'  changes the color of Ruby objects to better allow you to view the structure

bundle isntall is run after the gems - it installs a basic set of gems for your rails app and allows you to customize(add) gems as you wish.  

unlike sqlite3 postgresql is a static, it is object relational management for your Data bases.  It uses brute for protection and offers a lot more capabilities and features.  basically it can do a lot more and has a brouder reach than sqlite3.

Level 2-

In this level I generated a model v\called pages controller and set upt he routes for a view page the displays hello world as an h1.

Also branched to create a new feature 

createing feature specs.  First we are using rspec instead of tests because the are more readable.  Feature specs test how the app will work form a suer perspective .  FOr example when the clicka  certain button or feature this is what it will do.  

gem 'capybara' is a gem that helps with unit testing in rails or rake