# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup
- [x] Include login
- [x] Include logout
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes) (my eg teams/1/users)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate


TO-DO list:
- [ ] refactor google_login method
- [ ] scope search bar


What to expect in Reviews:
Similar to Sinatra, walkthrough authentication, how you meet those requirements, live coding is a step up, query methods, using where joins, order, generate SQL, active record model class method, look more into query methods


Build a search bar:
1. building a form for users to type in their search and hit submit
2. after submitting
3. scope method will find the user name 
4. redirect to a brand new page highlighting the user name and their team


- Please complete the live coding search feature:
- The search feature should be on your teams index page.
- We want to be able to search for a user and have a show page that shows the user's team and their team members.
- The search has to involve a scope method.
During the next assessment:
Be prepared to explain your refactors and implementations. This includes talking about the language(s) and libraries you’re using.
Be prepared to work through a live coding exercise. This could be further refactors, adding a new feature, or both.


Custom route to show the team with the most users
1. build the button on the team page (team with the most users)
2. build a scope in the team model (show the most users)
3. go to team controller model, def 'most users'
4. display it back to the most users url page