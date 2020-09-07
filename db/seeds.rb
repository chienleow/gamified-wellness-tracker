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
physical = Goal.create(category: "Physical Goals", description: "6 hours of Sleep, Exercise, Pack your Lunch")
mental = Goal.create(category: "Mental Goals", description: "Thankful List, Journal/Reflection, Meditation")
intellectual = Goal.create(category: "Intellectual Goals", description: "Listen to Podcast, Read Book/Article, Watch Tutorial Video")
daily_top_5 = Goal.create(category: "Daily Top 5", description: "Thing 1, Thing 2, Thing 3, Thing 4, Thing 5")
