# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [ ] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
- [ ] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [ ] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [ ] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup
- [x] Include login
- [x] Include logout
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate


Personal TO-DO:
Go with the conventional way, use goal index to show goals only
Have users "click button" on goal show page
Remember, you are building the MVP!! Get that done first, you can always modify your app to fit the stretch goals later for real usage


<option value="<%= @user.team_id %>">Team A</option>

<option value="1">Team A</option>
<% teams.each do |team| %>
   <option value=<%= team.id %>><%= team.name %></option>
<% end %>


# goals > index
# Brainstorm w/ Agi
<% @goals.each do |goal| %>
    <%= form_for @usergoal do |f| %>
        <%= goal.description %>
        <%= f.submit " " %>
    <% end %>
<% end %>

# Brainstorm w/ Jhonny
<% @goals.each do |goal| %>
    <%= form_for @usergoal do |f| %>
        <strong><p><%= link_to goal.category, goal_path(goal) %></p></strong>
        <p><%= f.label goal.description %></p>
        <%= f.hidden_field :goal_id, value: goal.id %>
        <%= f.hidden_field :user_id, value: current_user.id %>
        <%= f.submit "Add this to my User Goal" %>
    <% end %>
<% end %>




# stretch goals:
# 1. users/admin can change team name
# 2. 