# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Child.delete_all
User.delete_all
Activity.delete_all
Category.delete_all

puts "Creating Users"
["goh", "kyla", "yaamani", "jielin"].each do |user|
  User.create(username: user, email: "#{user}@playsnap.com", password: 123456)
end

puts "Creating Children"
["danielle", "whysee", "easun", "annie"].each_with_index do |user, index|
  Child.create(name: user, age: index, gender: ["male", "female"].sample, user_id: index + 1)
end

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
ping_pong_throw = Activity.new(title:"Ping Pong Throw", description: "The goal is to get balls inside a box. We have been using our cardboard house for this purpose but any box would work. Items required: Ping pong balls", object:"Ball", age_group:"12 - 24 mths", image_url:"https://images.squarespace-cdn.com/content/v1/5d45a91328f0880001bbe424/1566872221166-A36JCBSW0D23F1RH5CUA/pongcup_1.jpg?format=1000w", video_url:"")
ping_pong_throw.category = gross_motor
ping_pong_throw.save!

sorting_colours = Activity.new(title:"Sorting Colours", description: "Ask your toddler to sort items of the same colour bowl. Items required: Bowls", object:"Bowl", age_group:"12 - 24 mths", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_c4-7bacY1fbVq0TGtibhCTj6VCPM3CyRsCuKlywKY2-yPR1AxLimR6ufg-oUbi-FckE&usqp=CAU", video_url:"")
sorting_colours.category = gross_motor
sorting_colours.save!

match_lids = Activity.new(title:"Match Lids", description: "All you need is a couple of empty plastic bottles and lids. Items required: Bottles", object:"Bottle", age_group:"12 - 24 mths", image_url:"https://cdn.handsonaswegrow.com/wp-content/uploads/2016/04/Sequence.jpg", video_url:"")
match_lids.category = gross_motor
match_lids.save!

wheat_drawing = Activity.new(title:"Wheat Drawing", description: "Little artists can express themselves by drawing on a layer of cream of wheat on a tray.  Items required: Wheat", object:"Wheat", age_group:"12 - 24 mths", image_url:"https://i.ytimg.com/vi/qXXB72t7kCc/maxresdefault.jpg", video_url:"")
wheat_drawing.category = physical
wheat_drawing.save!

sieve_pasta = Activity.new(title:"Sieve Pasta", description: "Put some dried pasta (all one shape or a mix of different shapes) into a big plastic bowl. Hand your child a plastic jug or spoon and a sieve for lots of scooping, collecting, sorting and pouring. Items required: Bowl, Pasta", object:"Bowl, Pasta", age_group:"12 - 24 mths", image_url:"https://4.bp.blogspot.com/-g7lbb-xl3Rw/Vz28Y-PfB3I/AAAAAAAAFz0/zjOjpdE4doAWXDX8nfiA_s__WF_eREGIQCKgB/s1600/threading%2Bpasta%2B.png", video_url:"")
sieve_pasta.category = physical
sieve_pasta.save!

sweep_dust = Activity.new(title:"Sweep Dust", description: "Get them a mini broom or dustpan and brush – or even one of the little play vacuum cleaners that make brilliant, important-sounding suction noises – and spend some time making the floor all spick and span. Items required: Duster", object:"Duster", age_group:"12 - 24 mths", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVO2pmNE9cUGvyXBUuE_ZXS5gke-sKWNTcJA&usqp=CAU", video_url:"")
sweep_dust.category = physical
sweep_dust.save!

imagine_a_boat = Activity.new(title:"Imagine a Boat", description: "Lay out a towel or blanket on the floor and have your toddler sit it, gently pull them around the room. Pretend the blanket is a train or a boat and that you are stopping at different places, like the zoo, the grocery store, or a favorite restaurant. This activity for 2-year-olds at home will also improve balance! Items required: Towel" , object:"Towel", age_group:"12 - 24 mths", image_url:"https://3.bp.blogspot.com/-hC0NM37SVFU/V8bHRi6XZjI/AAAAAAAAX5A/yv2J-S929TQUPWQrRLzoN7zfMQYtHb0FwCLcB/s640/IMG_3259.JPG", video_url:"")
imagine_a_boat.category = gross_motor
imagine_a_boat.save!

hide_toys = Activity.new(title:"Hide Toys", description: "For an easy indoor activity for 2-year-olds, hide a toy somewhere in the house, and ask your child to find it. Explore with them, using cues like warmer and colder to guide them. You can also use flashlights for the search or hide several objects at one time. Items required: Toys", object:"Toy", age_group:"12 - 24 mths", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmM1r4yoiBSrIM3dffw3ZMED054peYBUgwoDVLcOR9jq9drNuwGqdOYbm8_PLUx9jwzcA&usqp=CAU", video_url:"")
hide_toys.category = physical
hide_toys.save!

knock_off = Activity.new(title:"Knock Off", description: "Put a small ball on top of a paper cup. Practice only kicking the ball off the cup without knocking the cup over. Items required: Ping Pong balls, Cup" , object:"Ball, Cup", age_group:"12 - 24 mths", image_url:"https://www.ordinaryreviews.com/wp-content/uploads/2019/07/ball-and-cup-carnival-games-800x451.jpg", video_url:"")
knock_off.category = physical
knock_off.save!

tug_of_war = Activity.new(title:"Tug of War", description: "Play tug of war with a towel. Try playing in tall kneeling. Items required: Towel" , object:"Towel", age_group:"12 - 24 mths", image_url:"https://t7.xframe.io/000/102/817/102817.jpg?auto=format&fit=crop&w=800&q=80&ixlib=react-9.4.0", video_url:"")
tug_of_war.category = gross_motor
tug_of_war.save!

step_up = Activity.new(title:"Step Up", description: "Do step ups using a small stool Items required: Stool", object:"Stool", age_group:"12 - 24 mths", image_url:"https://tracycosmetic.com/wp-content/uploads/2022/07/61kRXeV8pKL._AC_SL1500_-600x1084.jpg", video_url:"")
step_up.category = gross_motor
step_up.save!

bowling = Activity.new(title:"Bowling", description: "Use cups and set up bowling. Bowl with a ball or roll into the cups with your body. Items required: ball, cups" , object:"Ball, Cup", age_group:"12 - 24 mths", image_url:"https://i.pinimg.com/originals/71/58/bb/7158bb49e55575a6bf437611f0a9071b.jpg", video_url:"")
bowling.category = gross_motor
bowling.save!

mountain_jump = Activity.new(title:"Mountain Jump", description: "Jump over paper cups. Items required: cups" , object:"Cup", age_group:"12-24", image_url:"https://i.pinimg.com/originals/71/58/bb/7158bb49e55575a6bf437611f0a9071b.jpg", video_url:"")
mountain_jump.category = gross_motor
mountain_jump.save!

animal_excercise = Activity.new(title:"Animal Excercise", description: "Practice walking like different animals. Items required: none" , object:"none", age_group:"12 - 24 mths", image_url:"https://pathways.org/wp-content/uploads/2019/07/toddler-boy-kid-playing-outdoor--e1643043947568.jpg", video_url:"")
animal_excercise.category = gross_motor
animal_excercise.save!

side_to_side = Activity.new(title:"Side to Side", description: "Jump side to side over a shoe lace on the floor. Items required: shoelace", object:"Shoelace", age_group:"12 - 24 mths", image_url:"https://media.istockphoto.com/photos/trendy-kid-jumping-and-screaming-picture-id1152823461?k=20&m=1152823461&s=612x612&w=0&h=gDuKP-2mHrpfufiwl8fy9DKOCGA84mPDnrwVrI1Slsk=", video_url:"")
side_to_side.category = gross_motor
side_to_side.save!

ball_up = Activity.new(title:"Ball Up", description: "Keep a ball up in the air. Items required: ball Items required: ball", object:"Ball", age_group:"12 - 24 mths", image_url:"data:image/jpeg;base64,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", video_url:"")
ball_up.category = gross_motor
ball_up.save!

mix_match = Activity.new(title:"Mix Match", description: "They will stay amused with Tupperware for along time just by opening and closing the lids! Give them a few different shapes and sizes to really let their imagination and intrigue soar. Items required: tupperware", object:"Tupperware", age_group:"12 - 24 mths", image_url:"https://cdn.handsonaswegrow.com/wp-content/uploads/2012/05/tupperware-match-20180312-434x650.jpg", video_url:"")
mix_match.category = physical
mix_match.save!

tape_up = Activity.new(title:"Tape Up", description: "Let your baby peel and stick tape on the floor, tray, wall, etc. There are so many fun patterns and colors that tape comes in now, so have fun with them all! Items required: tape" , object:"Tape", age_group:"12 - 24 mths", image_url:"https://laughingkidslearn.com/wp-content/uploads/2016/01/Pulling-sticky-tape-off-table.jpg", video_url:"")
tape_up.category = physical
tape_up.save!

laundry_basket_push  = Activity.new(title:"Laundry Basket push", description: "Lifting and pushing are important skills for little kids to learn, and they can do just that with this pushing activity. Added challenge? Ask your kids to play the laundry push game during pick-up time.  Items required: basket" , object:"Basket", age_group:"12 - 24 mths", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqD26kKs0y8TjNDQ0de0e5e2PgxQdKRPZN9w&usqp=CAU", video_url:"")
laundry_basket_push.category = gross_motor
laundry_basket_push.save!

walking_on_a_balance_beam  = Activity.new(title:"Walking on a Balance Beam", description: "Using tape, create a tape balance beam on the floor for your child to walk along.  Items required: tape", object:"Tape", age_group:"12 - 24 mths", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqD26kKs0y8TjNDQ0de0e5e2PgxQdKRPZN9w&usqp=CAU", video_url:"")
walking_on_a_balance_beam.category = gross_motor
walking_on_a_balance_beam.save!

the_ball_waddle  = Activity.new(title:"The Ball Waddle", description: "Place a ball between your child knees and get them to waddle across the room without dropping it. Items required: ball", object:"Ball", age_group:"12 - 24 mths", image_url:"https://www.yourkidsot.com/uploads/2/4/0/3/24030117/2_1_orig.png", video_url:"")
the_ball_waddle.category = gross_motor
the_ball_waddle.save!

green_orange_red_light  = Activity.new(title:"Green Orange Red Light", description: "This is such a simple gross motor activity that always goes down well with toddlers. Get your child driving around in a pretend car. When you say green light, they must move around really quickly, orange light, they go slowly and red light they have to stop and standstill. Items required: none" , object:"None", age_group:"12 - 24 mths", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE7LjoTO70SVAaf1KavGbKS91Pl4qgV5bHcQ&usqp=CAU", video_url:"")
green_orange_red_light.category = gross_motor
green_orange_red_light.save!

mini_soccer  = Activity.new(title:"Mini Soccer", description: "Tip an empty laundry basket or cardboard box on its side for a goal. Then let your kids kick the balloon into the goal. Record how many goals they can make in the X amount of time. Items required: ball, basket" , object:"Ball, Basket", age_group:"12 - 24 mths", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSuPHK8KxNt5wem7CicGTZGpgGzmImRFfP4w&usqp=CAU", video_url:"")
mini_soccer.category = gross_motor
mini_soccer.save!

balancing_act  = Activity.new(title:"Balancing Act", description: "Use a stopwatch and record how long your child can balance on one foot. With each repetition, the goal is to beat their time. Switch legs. Items required: none" , object:"None", age_group:"12 - 24 mths", image_url: "https://theinspiredtreehouse.com/wp-content/uploads/2017/04/single-leg-stance-twitter.png", video_url:"")
balancing_act.category = gross_motor
balancing_act.save!

egg_spoon_race = Activity.new(title:"Egg & Spoon Race", description: "In this version, balance a ball on a spoon. Either set up a straight race where everyone races at once to the finish line. Or complete an alternating relay. Items required: ping pong ball, spoon" , object:"Ball, Spoon", age_group:"24 - 36 mths", image_url: "https://www.beafunmum.com/wp-content/uploads/2015/03/BigW-Easter_092.jpg", video_url:"")
egg_spoon_race.category = physical
egg_spoon_race.save!

pillow_stacking = Activity.new(title:"Pillow Stacking", description: "A fun pillow stacking activity to encourage gross motor skills and science skills that is so much fun, too. Lets learn some physics! Items required: pillow" , object:"Pillow", age_group:"12 - 24 mths", image_url: "https://kidsactivitiesblog--o--com.follycdn.com/wp-content/uploads/2012/06/pillow-stacks.jpg", video_url:"")
pillow_stacking.category = gross_motor
pillow_stacking.save!

foil_up = Activity.new(title:"Foil Up", description: "Learn about Texture by Molding and Painting Aluminum Foil Play with aluminum foil is a great way to learn about our sense of touch, texture and spatial reasoning as kids can ball the foil up into shapes, cover items and make imprints of them. Items required: foil", object:"Foil", age_group:"12 - 24 mths", image_url: "https://rukminim1.flixcart.com/image/800/800/k1118cw0/foil-shrinkwrap/n/z/q/9-af9m-supreme-bazaar-original-imafjz887cmsumfh.jpeg?q=90", video_url:"")
foil_up.category = physical
foil_up.save!

stacking_cups = Activity.new(title:"Stacking Cups", description: "Stacking Cups for Gross Motor Play Two year olds have fun rolling stacking cups, and pretending to drink/eat. Items required: cups", object:"Cups", age_group:"12 - 24 mths", image_url: "https://cdn.handsonaswegrow.com/wp-content/uploads/2012/05/2012_05_092.jpg", video_url:"")
stacking_cups.category = gross_motor
stacking_cups.save!

bucket_transfer = Activity.new(title:"Bucket Transfer", description: "Take two bowls and place one at one end of the room and one somewhere farther away.How fast can you transfer all of the balls to the empty bucket? Items required: ball, basket" , object:"Ball, Basket", age_group:"12 - 24 mths", image_url: "https://cdn.handsonaswegrow.com/wp-content/uploads/2017/07/IMG_0460_edited1-433x650.jpg", video_url:"")
bucket_transfer.category = physical
bucket_transfer.save!

learn_letters_with_flashcards  = Activity.new(title:"Learn Letters With Flashcards", description: "Alphabets: run through A - Z, can throw in phonics and an item to associate with the letterbonus: A! Ah ah ah, Apple! A A.  Items required: flashcards" , object:"Flashcard", age_group:"12 - 24 mths", image_url: "https://images-na.ssl-images-amazon.com/images/I/61NTjFBhKbS.__AC_SX300_SY300_QL70_ML2_.jpg", video_url:"")
learn_letters_with_flashcards.category = cognitive
learn_letters_with_flashcards.save!

sing_along  = Activity.new(title:"Sing Along", description: "Anything that pops in your mind! Hint: Twinkle twinkle little star! cocomelon if you need extra help. Items required: none", object:"None", age_group:"12 - 24 mths", image_url: "http://www.readingbrightstart.org/wp-content/uploads/2015/03/animal-singalong.jpg", video_url:"")
sing_along.category = cognitive
sing_along.save!

guess_the_animal  = Activity.new(title:"Guess The Animal", description: "Make some animal sounds and ask the toddler what animal it is. Items required: none", object:"None", age_group:"24 - 36 mths", image_url: "https://play-lh.googleusercontent.com/MWG4adp0FnC_otvGjVeyPYs2FiqaaE-z-obZH4Zp0BAzC4bREeDAk_kf0oirzjA8FRo", video_url:"")
guess_the_animal.category = cognitive
guess_the_animal.save!

simple_puzzle  = Activity.new(title:"Simple Puzzle", description: "Get your toddler a two-piece puzzle that is easy to identify visually and enables your little one to use their memory and logic to complete them. Items required: puzzle", object:"Puzzle", age_group:"12 - 24 mths", image_url: "https://m.media-amazon.com/images/I/61hQL6OD5aL._AC_SX679_.jpg", video_url:"")
simple_puzzle.category = cognitive
simple_puzzle.save!

learn_colours  = Activity.new(title:"Learn Colours", description: "Point to the item and say the colour and what it is.  Items required: none", object:"None", age_group:"24 - 36 mths", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE6CkSwE2rMT52IwE3LwYA3lr8gySlFkqBog&usqp=CAU", video_url:"")
learn_colours.category = cognitive
learn_colours.save!

stack = Activity.new(title:"Stack", description: "Free play to stack building blocks.  Items required: wooden blocks", object:"Wooden Block", age_group:"12 - 24 mths", image_url: "https://media.istockphoto.com/photos/six-wooden-blocks-arranged-in-pyramid-shape-picture-id1269203354?k=20&m=1269203354&s=612x612&w=0&h=Cgjq7c0RRnGvIdCrWzE-vQ3N0-lc4ngM6YAJlRADb4Y=", video_url:"")
stack.category = cognitive
stack.save!

texture_exploring = Activity.new(title:"Texture Exploring", description: "let toddler explore the different textures.  Items required: none" , object:"None", age_group:"12 - 24 mths", image_url: "https://1.bp.blogspot.com/-pDKCKBeSz-A/XzZ6Qt7hVoI/AAAAAAAAcM8/EM87qxUOvYUpcM2fH7KdxjRTETFelNL_gCLcBGAsYHQ/s2048/IMG_4278.jpg", video_url:"")
texture_exploring.category = cognitive
texture_exploring.save!

puts "Creating physical activities"
Activity.create(
  [
    {
      title: "Row, Row, Row Your Boat",
      description: "This indoor physical activity is great for toddlers'
      physical development and socialization with no equipment necessary.
      In this exercise, children sit facing a partner with feet touching.
      They hold hands and lean forward and backward while singing the classic song",
      age_group: "0 - 12 mths",
      image_url: "https://theinspiredtreehouse.com/wp-content/uploads/2014/01/fun-sensory-activities-row-your-boat-square.jpg",
      video_url: "",
      category: physical
    },
    {
      title: "Musical Hide and Seek",
      description: "Play music from a phone and hide it from the children. You and the children can then search together to figure out where the music is coming from.
      This activity will be fun for the toddlers and will get them moving.",
      age_group: "0 - 12 mths",
      image_url: "https://i.dailymail.co.uk/i/pix/2016/11/18/18/3A86BC9100000578-0-image-a-4_1479493399222.jpg",
      video_url: "",
      category: physical
    },
    {
      title: "Build a Tower",
      description: "Need a supply of blocks, containers with lids or another similar, stackable object.
      Using your item of choice, build a tower with a child.
      Take turns adding blocks or containers to the tower and see how high the child can stack them.
      You can count the number of stacked items together, and then when the tower is complete, the child can knock it down.",
      age_group: "24 - 36 mths",
      image_url: "https://www.howwemontessori.com/.a/6a0147e1d4f40f970b017743f34f16970d-pi",
      video_url: "",
      category: physical
    },
    {
      title: "Toss Balls in a Basket",
      description: "Give toddlers foam or rubber balls to roll back and forth to a partner.
      Older toddlers can toss the balls into a basket.
      During this activity, exercise caution with younger children who might bite foam balls.
      Avoid small balls that toddlers could put in their mouths and swallow.",
      age_group: "12 - 24 mths",
      image_url: "https://i.shgcdn.com/a75502b6-303a-457d-a3aa-748cb16dd231/-/format/auto/-/preview/3000x3000/-/quality/lighter/",
      video_url: "",
      category: physical
    },
    {
      title: "Throw Sponges",
      description: "This activity is great for a hot day.
      Children take wet sponges and toss them toward a container or bin.
      They can compare how far they can throw sponges of different sizes can be
      thrown or how different amounts of water affect the distance the sponge travels.",
      age_group:"24 - 36 mths",
      image_url: "https://playtivities.com/wp-content/uploads/2021/05/13-sponge-toss.jpg.webp",
      video_url: "",
      category: physical
    },
    {
      title: "Imitate Animals",
      description: "While on their hands and knees, toddlers move, stretch and play like animals.
      They can hop like a frog or waddle like a penguin.
      They can arch their backs, roll on their backs, reach as high as they can and walk on all fours.
      Choose a variety of animals and movements to keep children engaged and using their whole bodies to stay active.",
      age_group: "24 - 36 mths",
      image_url: "https://lemonlimeadventures.com/wp-content/uploads/2015/01/Animal-Walk-Exercises.jpg",
      video_url: "",
      category: physical
    },
    {
      title: "Hit the Balloon",
      description: "Encourage toddlers to keep a balloon from touching the ground by hitting it with their hands.
      You can also place an item between two children, such as a chair or pillow,
      and instruct them to hit the balloon over the barrier to the other child.
      Chasing balloons allows children to run,
      zigzag and hop to keep up with the object while maintaining their balance.",
      age_group: "24 - 36 mths",
      image_url: "https://www.hellowonderful.co/wp-content/uploads/2020/03/balloon-tennis-game-kids.jpg.webp",
      video_url: "",
      category: physical
    },
    {
      title: "Feed the Lion",
      description: "On a cardboard box, draw or paint a lion's head and cut a hole for the lion's mouth.
      Children will take crumpled paper balls and try to toss them into the lion's mouth.
      Afterward, children can count how many balls they fed the lion.",
      age_group: "24 - 36 mths",
      image_url: "https://rainydaymum.co.uk/wp-content/uploads/2018/04/feed-the-lion-counting-game-for-toddlers-and-preschoolers-feature.jpg",
      video_url: "",
      category: physical
    }
  ]
)

puts 'Finished!'
