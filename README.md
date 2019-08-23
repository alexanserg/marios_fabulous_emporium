# Marios' Fabulous Emporium
## Written by Alexander Sergejev

### Description:
_This application allows the addition of products with attributes "name," "cost," and "country of origin." It further has a child element of reviews that can be added by customers. Reviews contain the name of the author, the a written reviews of between 50 and 250 characters and a rating from one to five.
for testing purposes it uses the faker gem to fill out the database._

### Setup:
* Clone the repository found at https://github.com/alexanserg/marios_fabulous_emporium.git
* In the terminal run the following commands
* $ bundle
* $ rake db:create
* $ rake db:migrate
* $ rake db:seed
* $ rails s
* open the application in the browser at localhost:3000


* tests are written using rspec/rails. they can be run by entering $ rspec in the terminal.

#### License: This is licensed under the MIT license
#### Copyright (c) 2019 by Alexander Sergejev
