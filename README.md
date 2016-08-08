#This is the README file for the ![CareerFoundry Logo](http://en.webrazzi.com/wp-content/uploads/2014/06/CareerFoundry-logo.jpg)
#[CareerFoundry Web Development Course Rails App](http://www.careerfoundry.com)

### The demo application can be found at [afbikeberlin.herokuapp.com](https://afbikeberlin.herokuapp.com/)
###There are key learnings for this app
1. Follow up and build on learnings from the Front End Web section of the course
2. Build on Ruby knowledge
3. Familiarize and note down key learnings from the lesssons about creating web applications using the Rails framework.
4. Applying basic AJAX in Rails to save on page reloads

####Models Used for this application
1. User model - has_many :orders, has_many :products, has_many :comments
2. Product model - _belongs_to :users, :orders, has_many :comments,
3. Order model - _has_many :products_
4. Comment model - _includes comment and rating attributes_