# Gamified Wellness Tracker
How do you stay motivated remotely with your peers? How do you keep you and your team members accountable? With "Gamified Wellness Tracker", you can set your daily goals along with your team members, achieve goals together while earning team points for a friendly competition.

## Built With
- Front-end: [Bootstrap](https://getbootstrap.com/)
- Back-end: [Ruby on Rails](https://rubyonrails.org/)
- Database: [PostgreSQL](https://www.postgresql.org/)

## Demo
- [Video Walkthrough](https://youtu.be/uTYCEnw-izk)

## Installation
1. Fork and clone this repository down to your local environment
2. `cd` into the `gamified-wellness-tracker` directory
3. Execute this in your console to install all required gems: `bundle install`
4. Run this command from your command line (optionally create a `seeds.rb` file in the `db` folder to preload data and then run `rake db:seed` before running this command):
`rake db:migrate`
5. Run `rails s` to start the server
6. visit localhost:[port-number] (the port number will be specified after running `rails s`)

## (Minimum Viable Product) MVP Usage
1. Welcome to Gamified Wellness Tracker App, please log in or sign up a new profile to start tracking your daily goals.
2. Navigate to "Goals" from the top navbar to start customizing your own goals from these categories: "Physical goals", "Mental goals", "Intellectual goals" and "Daily top 5".
3. You can view your created goals from your profile under "Your dashboard".
4. You can view all the teams including yours by clicking "Teams".

## Stretch Goals
- Build checkboxes next to user goals for users to check them off after completing goals
- Build point systems into the completed goals
- Create an admin to organize teams, and make changes
- Motivational quotes randomizer (plant puns)
- Users can customize their profile page with motivational songs, quotes, notes
- Cap each section, so one person wouldn't take down all the points for the entire team

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/chienleow/gamified-wellness-tracker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License
The app is available as open source under the terms of the MIT License.



