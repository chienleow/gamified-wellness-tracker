# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeds for Team
team_a = Team.create(team_name: "Team A")
team_b = Team.create(team_name: "Team B")
team_c = Team.create(team_name: "Team C")

# Seeds for Goal
physical_1 = Goal.create(category: "Physical", description: "6 hours of Sleep")
physical_2 = Goal.create(category: "Physical", description: "Exercise")
mental_1 = Goal.create(category: "Mental", description: "Thankful List")
mental_2 = Goal.create(category: "Mental", description: "Journal/Reflection")
intellectual_1 = Goal.create(category: "Intellectual", description: "Podcast")
intellectual_2 = Goal.create(category: "Intellectual", description: "Book/Article")
daily_1 = Goal.create(category: "Daily Top 5", description: "Thing 1")
daily_2 = Goal.create(category: "Daily Top 5", description: "Thing 2")
daily_3 = Goal.create(category: "Daily Top 5", description: "Thing 3")
daily_4 = Goal.create(category: "Daily Top 5", description: "Thing 4")
daily_5 = Goal.create(category: "Daily Top 5", description: "Thing 5")

