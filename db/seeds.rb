# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Activity.delete_all
Category.delete_all

puts 'Creating Categories...'
social = Category.new(sort: "social")
social.save!

emotional = Category.new(sort: "emotional")
emotional.save!

cognitive = Category.new(sort: "cognitive")
cognitive.save!

physical = Category.new(sort: "physical")
physical.save!

gross_motor = Category.new(sort: "gross motor")
gross_motor.save!

puts 'Finished!'

puts 'Creating Activities...'
ping_pong_throw = Activity.new(title:"ping pong throw", description: "The goal is to get balls inside a box. We have been using our cardboard house for this purpose but any box would work. Items required: Ping pong balls",  age_group:"1-2", image_url:"https://www.babyplayhacks.com/play-hacks/pong-cups", video_url:"")
ping_pong_throw.category = gross_motor
ping_pong_throw.save!

sorting_colours = Activity.new(title:"sorting colours", description: "Ask your toddler to sort items of the same colour bowl. Items required: Bowls", age_group:"2-3", image_url:"https://www.amazon.co.uk/EDX-Education-Coloured-Sorting-Bowls/dp/B07D6DZ7WS", video_url:"")
sorting_colours.category = gross_motor
sorting_colours.save!

match_lids = Activity.new(title:"match lids", description: "All you need is a couple of empty plastic bottles and lids. Items required: Bottles", age_group:"2-3", image_url:"https://handsonaswegrow.com/5-fun-learning-activities-bottles-caps/", video_url:"")
match_lids.category = gross_motor
match_lids.save!

puts 'Finished!'
