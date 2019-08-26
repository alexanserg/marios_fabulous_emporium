# Mario's Fabulous Emporium
## Written by Alexander Sergejev

### Description:
_This RESTful application is built using Ruby on Rails. It allows CRUD functionality of products with attributes "name," "cost," and "country of origin." It further has a nested element of reviews that can be added by customers. Reviews contain the name of the author,  a written review of between 50 and 250 characters and a rating from one to five.
for demonstration purposes it uses the faker gem to fill out the database._

### Setup:
* Clone the repository found at https://github.com/alexanserg/marios_fabulous_emporium.git
* In the terminal run the following commands
* $ bundle
* $ rake db:create
* $ rake db:migrate
* $ rake db:seed (because faker is random, there may not be any American products. To see how this program can scope for products made in America, either manually add products with "country_of_origin" equal to "American" or simply repeat rake db:seed a few times until Faker seeds some American products.)
* $ rails s
* open the application in the browser at localhost:3000


* tests are written using rspec-rails and capybara. They can be run by entering $ rspec in the terminal from the root of the directory.

#### License: This is licensed under the MIT license
#### Copyright (c) 2019 by Alexander Sergejev
