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

wheat_drawing = Activity.new(title:"wheat drawing", description: "Little artists can express themselves by drawing on a layer of cream of wheat on a tray.  Items required: Wheat", age_group:"1-2", image_url:"https://handsonaswegrow.com/flour-sensory-play-toddlers/", video_url:"")
wheat_drawing.category = physical
wheat_drawing.save!

sieve_pasta = Activity.new(title:"sieve pasta", description: "Put some dried pasta (all one shape or a mix of different shapes) into a big plastic bowl. Hand your child a plastic jug or spoon and a sieve for lots of scooping, collecting, sorting and pouring. Items required: Bowl, Pasta", age_group:"2-3", image_url:"https://www.messylittlemonster.com/2016/05/pasta-play-simple-activities-for.html", video_url:"")
sieve_pasta.category = physical
sieve_pasta.save!

sweep_dust = Activity.new(title:"sweep dust", description: "Get them a mini broom or dustpan and brush – or even one of the little play vacuum cleaners that make brilliant, important-sounding suction noises – and spend some time making the floor all spick and span. Items required: Duster", age_group:"2-3", image_url:"https://www.educatall.com/page/1156/Tiny-brooms-and-dustpans-for-toddlers.html", video_url:"")
sweep_dust.category = physical
sweep_dust.save!

imagine_a_boat = Activity.new(title:"imagine a boat", description: "Lay out a towel or blanket on the floor and have your toddler sit it, gently pull them around the room. Pretend the blanket is a train or a boat and that you are stopping at different places, like the zoo, the grocery store, or a favorite restaurant. This activity for 2-year-olds at home will also improve balance! Items required: Towel", age_group:"2-3", image_url:"https://www.freepik.com/premium-photo/happy-baby-sitting-yellow-background-wrapped-blue-towel-with-hood-baby-after-bath_16480283.html", video_url:"")
imagine_a_boat.category = gross_motor
imagine_a_boat.save!

hide_toys = Activity.new(title:"hide toys", description: "For an easy indoor activity for 2-year-olds, hide a toy somewhere in the house, and ask your child to find it. Explore with them, using cues like warmer and colder to guide them. You can also use flashlights for the search or hide several objects at one time. Items required: Toys", age_group:"2-3", image_url:"https://bestlifeonline.com/hiding-childrens-toys/", video_url:"")
hide_toys.category = physical
hide_toys.save!

knock_off = Activity.new(title:"knock off", description: "Put a small ball on top of a paper cup. Practice only kicking the ball off the cup without knocking the cup over. Items required: Ping Pong balls, Cup", age_group:"2-3", image_url:"https://happymomhacks.com/indoor-activities-kids-at-home/", video_url:"")
knock_off.category = physical
knock_off.save!

tug_of_war = Activity.new(title:"tug of war", description: "Play tug of war with a towel. Try playing in tall kneeling. Items required: Towel", age_group:"2-3", image_url:"https://xframe.io/photos/102817", video_url:"")
tug_of_war.category = gross_motor
tug_of_war.save!

step_up = Activity.new(title:"step up", description: "Do step ups using a small stool Items required: Stool", age_group:"2-3", image_url:"https://tracycosmetic.com/wp-content/uploads/2022/07/61kRXeV8pKL._AC_SL1500_-600x1084.jpg", video_url:"")
step_up.category = gross_motor
step_up.save!

bowling = Activity.new(title:"bowling", description: "Use cups and set up bowling. Bowl with a ball or roll into the cups with your body. Items required: ball, cups", age_group:"2-3", image_url:"https://i.pinimg.com/originals/71/58/bb/7158bb49e55575a6bf437611f0a9071b.jpg", video_url:"")
bowling.category = gross_motor
bowling.save!

mountain_jump = Activity.new(title:"mountain jump", description: "Jump over paper cups. Items required: cups", age_group:"2-3", image_url:"https://i.pinimg.com/originals/71/58/bb/7158bb49e55575a6bf437611f0a9071b.jpg", video_url:"")
mountain_jump.category = gross_motor
mountain_jump.save!

animal_excercise = Activity.new(title:"animal excercise", description: "Practice walking like different animals. Items required: none", age_group:"1-2", image_url:"https://pathways.org/wp-content/uploads/2019/07/toddler-boy-kid-playing-outdoor--e1643043947568.jpg", video_url:"")
animal_excercise.category = gross_motor
animal_excercise.save!

side_to_side = Activity.new(title:"side to side", description: "Jump side to side over a shoe lace on the floor. Items required: shoelace", age_group:"1-2", image_url:"https://media.istockphoto.com/photos/trendy-kid-jumping-and-screaming-picture-id1152823461?k=20&m=1152823461&s=612x612&w=0&h=gDuKP-2mHrpfufiwl8fy9DKOCGA84mPDnrwVrI1Slsk=", video_url:"")
side_to_side.category = gross_motor
side_to_side.save!

ball_up = Activity.new(title:"ball up", description: "Keep a ball up in the air. Items required: ball Items required: ball", age_group:"1-2", image_url:"data:image/jpeg;base64,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", video_url:"")
ball_up.category = gross_motor
ball_up.save!

mix_match = Activity.new(title:"mix match", description: "They will stay amused with Tupperware for along time just by opening and closing the lids! Give them a few different shapes and sizes to really let their imagination and intrigue soar. Items required: tupperware", age_group:"1-2", image_url:"https://cdn.handsonaswegrow.com/wp-content/uploads/2012/05/tupperware-match-20180312-434x650.jpg", video_url:"")
mix_match.category = physical
mix_match.save!

tape_up = Activity.new(title:"tape up", description: "Let your baby peel and stick tape on the floor, tray, wall, etc. There are so many fun patterns and colors that tape comes in now, so have fun with them all! Items required: tape", age_group:"1-2", image_url:"https://laughingkidslearn.com/wp-content/uploads/2016/01/Pulling-sticky-tape-off-table.jpg", video_url:"")
tape_up.category = physical
tape_up.save!

laundry_basket_push  = Activity.new(title:"laundry basket push", description: "Lifting and pushing are important skills for little kids to learn, and they can do just that with this pushing activity. Added challenge? Ask your kids to play the laundry push game during pick-up time.  Items required: basket", age_group:"2-3", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqD26kKs0y8TjNDQ0de0e5e2PgxQdKRPZN9w&usqp=CAU", video_url:"")
laundry_basket_push.category = gross_motor
laundry_basket_push.save!

walking_on_a_balance_beam  = Activity.new(title:"walking on a balance beam", description: "Using tape, create a tape balance beam on the floor for your child to walk along.  Items required: tape", age_group:"2-3", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqD26kKs0y8TjNDQ0de0e5e2PgxQdKRPZN9w&usqp=CAU", video_url:"")
walking_on_a_balance_beam.category = gross_motor
walking_on_a_balance_beam.save!

the_ball_waddle  = Activity.new(title:"the ball waddle", description: "Place a ball between your child knees and get them to waddle across the room without dropping it. Items required: ball", age_group:"2-3", image_url:"https://www.yourkidsot.com/uploads/2/4/0/3/24030117/2_1_orig.png", video_url:"")
the_ball_waddle.category = gross_motor
the_ball_waddle.save!

green_orange_red_light  = Activity.new(title:"green orange red light", description: "This is such a simple gross motor activity that always goes down well with toddlers. Get your child driving around in a pretend car. When you say green light, they must move around really quickly, orange light, they go slowly and red light they have to stop and standstill. Items required: none", age_group:"2-3", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE7LjoTO70SVAaf1KavGbKS91Pl4qgV5bHcQ&usqp=CAU", video_url:"")
green_orange_red_light.category = gross_motor
green_orange_red_light.save!

mini_soccer  = Activity.new(title:"mini soccer", description: "Tip an empty laundry basket or cardboard box on its side for a goal. Then let your kids kick the balloon into the goal. Record how many goals they can make in the X amount of time. Items required: ball, basket", age_group:"2-3", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSuPHK8KxNt5wem7CicGTZGpgGzmImRFfP4w&usqp=CAU", video_url:"")
mini_soccer.category = gross_motor
mini_soccer.save!

balancing_act  = Activity.new(title:"balancing act", description: "Use a stopwatch and record how long your child can balance on one foot. With each repetition, the goal is to beat their time. Switch legs. Items required: none", age_group:"2-3", image_url: "https://theinspiredtreehouse.com/wp-content/uploads/2017/04/single-leg-stance-twitter.png", video_url:"")
balancing_act.category = gross_motor
balancing_act.save!

egg_spoon_race = Activity.new(title:"egg & spoon race", description: "In this version, balance a ball on a spoon. Either set up a straight race where everyone races at once to the finish line. Or complete an alternating relay. Items required: ping pong ball, spoon", age_group:"2-3", image_url: "https://www.beafunmum.com/wp-content/uploads/2015/03/BigW-Easter_092.jpg", video_url:"")
egg_spoon_race.category = physical
egg_spoon_race.save!

pillow_stacking = Activity.new(title:"pillow stacking", description: "A fun pillow stacking activity to encourage gross motor skills and science skills that is so much fun, too. Lets learn some physics! Items required: pillow", age_group:"2-3", image_url: "https://kidsactivitiesblog--o--com.follycdn.com/wp-content/uploads/2012/06/pillow-stacks.jpg", video_url:"")
pillow_stacking.category = gross_motor
pillow_stacking.save!

foil_up = Activity.new(title:"foil up", description: "Learn about Texture by Molding and Painting Aluminum Foil Play with aluminum foil is a great way to learn about our sense of touch, texture and spatial reasoning as kids can ball the foil up into shapes, cover items and make imprints of them. Items required: foil", age_group:"2-3", image_url: "https://rukminim1.flixcart.com/image/800/800/k1118cw0/foil-shrinkwrap/n/z/q/9-af9m-supreme-bazaar-original-imafjz887cmsumfh.jpeg?q=90", video_url:"")
foil_up.category = physical
foil_up.save!

stacking_cups = Activity.new(title:"stacking cups", description: "Stacking Cups for Gross Motor Play Two year olds have fun rolling stacking cups, and pretending to drink/eat. Items required: cups", age_group:"2-3", image_url: "https://cdn.handsonaswegrow.com/wp-content/uploads/2012/05/2012_05_092.jpg", video_url:"")
stacking_cups.category = gross_motor
stacking_cups.save!

bucket_transfer = Activity.new(title:"bucket transfer", description: "Take two bowls and place one at one end of the room and one somewhere farther away.How fast can you transfer all of the balls to the empty bucket? Items required: ball, basket", age_group:"2-3", image_url: "https://cdn.handsonaswegrow.com/wp-content/uploads/2017/07/IMG_0460_edited1-433x650.jpg", video_url:"")
bucket_transfer.category = physical
bucket_transfer.save!

learn_letters_with_flashcards  = Activity.new(title:"learn letters with flashcards", description: "Alphabets: run through A - Z, can throw in phonics and an item to associate with the letterbonus: A! Ah ah ah, Apple! A A.  Items required: flashcards", age_group:"1-2", image_url: "https://images-na.ssl-images-amazon.com/images/I/61NTjFBhKbS.__AC_SX300_SY300_QL70_ML2_.jpg", video_url:"")
learn_letters_with_flashcards.category = cognitive
learn_letters_with_flashcards.save!

sing_along  = Activity.new(title:"sing along", description: "Anything that pops in your mind! Hint: Twinkle twinkle little star! cocomelon if you need extra help. Items required: none", age_group:"1-2", image_url: "http://www.readingbrightstart.org/wp-content/uploads/2015/03/animal-singalong.jpg", video_url:"")
sing_along.category = cognitive
sing_along.save!

guess_the_animal  = Activity.new(title:"guess the animal", description: "Make some animal sounds and ask the toddler what animal it is. Items required: none", age_group:"1-2", image_url: "https://play-lh.googleusercontent.com/MWG4adp0FnC_otvGjVeyPYs2FiqaaE-z-obZH4Zp0BAzC4bREeDAk_kf0oirzjA8FRo", video_url:"")
guess_the_animal.category = cognitive
guess_the_animal.save!

simple_puzzle  = Activity.new(title:"simple puzzle", description: "Get your toddler a two-piece puzzle that is easy to identify visually and enables your little one to use their memory and logic to complete them. Items required: puzzle", age_group:"2-3", image_url: "https://m.media-amazon.com/images/I/61hQL6OD5aL._AC_SX679_.jpg", video_url:"")
simple_puzzle.category = cognitive
simple_puzzle.save!

learn_colours  = Activity.new(title:"learn colours", description: "Point to the item and say the colour and what it is.  Items required: none", age_group:"1-2", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE6CkSwE2rMT52IwE3LwYA3lr8gySlFkqBog&usqp=CAU", video_url:"")
learn_colours.category = cognitive
learn_colours.save!

stack = Activity.new(title:"stack", description: "Free play to stack building blocks.  Items required: wooden blocks", age_group:"1-2", image_url: "https://media.istockphoto.com/photos/six-wooden-blocks-arranged-in-pyramid-shape-picture-id1269203354?k=20&m=1269203354&s=612x612&w=0&h=Cgjq7c0RRnGvIdCrWzE-vQ3N0-lc4ngM6YAJlRADb4Y=", video_url:"")
stack.category = cognitive
stack.save!

texture_exploring = Activity.new(title:"texture_exploring", description: "let toddler explore the different textures.  Items required: any interesting texture", age_group:"1-2", image_url: "https://1.bp.blogspot.com/-pDKCKBeSz-A/XzZ6Qt7hVoI/AAAAAAAAcM8/EM87qxUOvYUpcM2fH7KdxjRTETFelNL_gCLcBGAsYHQ/s2048/IMG_4278.jpg", video_url:"")
texture_exploring.category = cognitive
texture_exploring.save!

puts 'Finished!'
