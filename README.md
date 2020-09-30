# Gamified Wellness Tracker
How do you stay motivated remotely with your peers? We understand the importance of accountability. With "gamified-wellness-app", you can set your daily goals along with team members, achieve goals together while earning team points for a friendly competition.

# Installation
1. Fork and clone this repository down to your local environment
2. `cd` into the `gamified-wellness-tracker` directory
3. Execute this in your console to install all required gems:
````
$ bundle install
````
4. Run this command from your command line (optionally create a `seeds.rb` file in the `db` folder to preload data and then run `rake db:seed` before running this command)
````
$ rake db:migrate
````
5. Run `rails s` to start the server
6. visit localhost:[port-number] (the port number will be specified after running `rails s`)
