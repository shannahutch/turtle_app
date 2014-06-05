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

gem 'capybara' is a gem that helps with unit testing in rails or rake.  feature testing.

created rspec feature test for hello_world 

pages controller was generate with  hellow workd action.  THen deleted excess files.  

spec-helper - helps load tests 

level 3- 
branch to bootstrap

add gem 'bootstrap-sass'
    gem 'bootstrap-generators', '~> 3.1.1'
  generated boostrap with-
      rails generate bootstrap:install -f

add rspec test for link test

level 4
created scaffolding branch
  scaffolding generates a full set of model, db migration, controller, views and test suite. i added both a name field and description to the generator.  It is not best practice to use it all the time because it does not display a full working knowledge and also creates many files, methods and other things that you may not want in your application.  Like Coffee files if you don't use them or delete methods that may not be applicable to your application.

  -I delete the coffe files and json created by the scaffolding.  I also migrates the new files into the DB

  level 5

 added gem 'factory girl'- which  is a tool that allows us to create objects/data for our database to use for testing
 created spec/support/factory_girl.rb
 to config validations and rspec for validations

creates spec/factries/things.rb
created a thing factory in this file for thing :name :description
  this is where validatoin factory tests go

  put validation in thing.rb model file 

  puts validation tests in spec/model/thing_spec.rb

  also required presence true validation for description.  added description to things_controller_spec.rb. And wrote a test to test for its presence.

  level 6

  I created seed data and ran rake db:seed
  I used the find_by_create_by method, as well as the radom data generetor. 
  The random data generator use 
    gem 'forgery' which goes in developement GEMfile. 
  rakedb:seed - created seed data
  rake db:reset - drops data table and recreates it.  

  level 7
  add gem 'devise'
  set root route "pages#helloworld"

  level 8

  created the ownership relationships between users and things.  Using has_many and belongs_to.  These allow easier more "dry" coding to be used to access information.  Also created a reference to user in things .  Created a relationship via foreign key (user_id).

  The foreign key is usually an id from table that exissts ina  another as a reference to or connector between the tables.

  has_many- this is one item and it can have multiples of the item it    is  associated to
  belongs_to - this is one item and it is the child of one other
  has_many :through  this is one item that has a relationship via another item and that the item has multiples.  
  has_one - this is one item and it is assciated with another item there is only one of those as well
  has_one :through- same thing but there is an intermediary object to connect them...like a middle man
  has_and_belongs_to_many- this item belongs ot many and also has many.  

  migrsations allow you to evlovle your schema overtime.  It is like created a new chema version via the terminal. THese changes shoe up in the schema.  

  user_id:integer - is a columnin your thing datatable that creates the foreign key to associate it to User table.  
  user:references- actually cerates the relationship bewtween the 23 table



  


