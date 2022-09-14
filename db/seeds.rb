# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Child.destroy_all
User.destroy_all
Activity.destroy_all
Category.destroy_all

puts "Creating Users"
["goh", "kyla", "yaamani", "jielin"].each do |user|
  parent_profile = User.create(
    username: user,
    email: "#{user}@playsnap.com",
    password: "playsnap"
    )
  puts "Finished creating users"

  puts "Creating Child"
  Child.create(
    name: ["danielle", "whysee", "easun", "annie"].sample,
    age: (0..36).to_a.sample,
    gender: ["male", "female"].sample,
    user_id: parent_profile.id
  )
  puts "Finished creating child"
  puts "Finished creating users with children"
end


puts 'Creating Categories...'

social = Category.new(name: "social")
social.save!

emotional = Category.new(name: "emotional")
emotional.save!

cognitive = Category.new(name: "cognitive")
cognitive.save!

fine_motor = Category.new(name: "fine motor")
fine_motor.save!

gross_motor = Category.new(name: "gross motor")
gross_motor.save!

puts 'Categories created!'

puts "Creating social activities.."
Activity.create(
  [
    {
      title: "Ball Up",
      description: "Encourage the children to work together to keep the ball up in the air.",
      object: "Ball",
      age_group: "25 - 36 mths",
      image_url: "https://cdn.cdnparenting.com/articles/2022/01/21173905/27318151.jpg",
      video_url: "",
      category: social
    },
    {
      title: "Ball & Spoon Race",
      description: "Balance a ball on a spoon. Either set up a straight race
      where everyone races at once to the finish line. Or complete an
      alternating relay.",
      object: "Balls, Spoons",
      age_group: "25 - 36 mths",
      image_url: "https://www.beafunmum.com/wp-content/uploads/2015/03/BigW-Easter_092.jpg",
      video_url: "",
      category: social
    }
  ]
)
puts "Created social activities!"

puts "Creating emotional activities.."
Activity.create(
  [
    {
      title: "Let's Cook",
      description: "Act out how to prepare meals and eating together with your child.",
      object: "",
      age_group: "13 - 24 mths",
      image_url: "https://upload.wikimedia.org/wikipedia/commons/f/fd/Kids%27s_game_cooking_yakisoba_by_yamakazz.jpg",
      video_url: "",
      category: emotional
    },
    {
      title: "Storytime",
      description: "Read a story together and discuss the content to develop empathy.
      You may ask questions such as 'Why did the character feel sad', or 'How do you
      think this made him / her feel?'",
      object: "Storybook",
      age_group: "25 - 36 mths",
      image_url: "https://www.parents.com/thmb/Gcsnu4v_x1j02kptKX08Jgq0WL4=/1600x1200/smart/filters:no_upscale()/noltelourens-2fd83e1022184dcbaca0cbd17d1759ce.jpg",
      video_url: "",
      category: emotional
    },
    {
      title: "Puppet Play",
      description: "User puppets to act out social situations and see if your
      child can recognise and understand emotions. Interactions can include asking
      your child how should the puppet respond, or if the puppet's behaviour is acceptable.",
      object: "Puppet",
      age_group: "25 - 36 mths",
      image_url: "https://empoweredparents.co/wp-content/uploads/2019/10/social-emotional-activities-for-preschoolers-3.jpg.webp",
      video_url: "",
      category: emotional
    },
    {
      title: "Scissors Paper Stone",
      description: "This simple game encourages your child to understand game rules,
      taking turns, and controlling their emotions when they are frustrated.",
      object: "",
      age_group: "25 - 36 mths",
      image_url: "https://img.freepik.com/premium-photo/cute-kids-play-stone-paper-scissors-have-fun-white-background_332033-262.jpg?w=2000",
      video_url: "",
      category: emotional
    },
    {
      title: "Share My Snacks",
      description: "Ask your child to share his / her favourite snacks with the people around.",
      object: "Snacks",
      age_group: "13 - 24 mths",
      image_url: "https://cdn.cdnparenting.com/articles/2018/04/617915693-H.jpg",
      video_url: "",
      category: emotional
    },
    {
      title: "P's and Q's",
      description: "Encourage your child to say something kind or polite such as
      'please', 'thank you', and 'I love you' to people around them.",
      object: "",
      age_group: "13 - 24 mths",
      image_url: "http://www.enannysource.com/blog/wp-content/uploads/2012/02/thankyou.jpg",
      video_url: "",
      category: emotional
    },
    {
      title: "Scribble and Draw",
      description: "Encourage your child to scribble or draw their emotions, and
      talk about it.",
      object: "Colour Pencils, Paper",
      age_group: "25 - 36 mths",
      image_url: "https://live.staticflickr.com/324/18626345783_5a136635a0_b.jpg",
      video_url: "",
      category: emotional
    },
    {
      title: "Blowing Bubbles",
      description: "Play breathing exercises to teach your child appropriate
      breathing techniques which could be applied when they are feeling anxious.
      You may also play pretend to blow and pop the bubbles to release their frustrations",
      object: "Soap",
      age_group: "25 - 36 mths",
      image_url: "https://www.merakilane.com/wp-content/uploads/2018/03/Breathing-Techniques-for-Anxiety.png",
      video_url: "",
      category: emotional
    },
    {
      title: "My Buddy",
      description: "Encourage your child to cheer up their soft toy who is feeling
      upset by using words of encouragement, giving hugs, problem-solving etc.",
      object: "Toy",
      age_group: "25 - 36 mths",
      image_url: "https://live.staticflickr.com/4025/4621636637_96f7f3832b.jpg",
      video_url: "",
      category: emotional
    },
    {
      title: "Simon Says",
      description: "Play a fun game of Simon Says to get your child to listen
      closely to your instructions and performing them accordingly.",
      object: "",
      age_group: "25 - 36 mths",
      image_url: "https://empoweredparents.co/wp-content/uploads/2021/10/Children-playing-Simon-Says.jpg",
      video_url: "",
      category: emotional
    },
  ]
)
puts "Created emotional activities!"

puts "Creating cognitive activities.."
Activity.create(
  [
    {
      title: "Sorting Colours",
      description: "Ask your child to find items of the same colour and place
      them in a matching bowl.",
      object: "Bowls",
      age_group: "13 - 24 mths",
      image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_c4-7bacY1fbVq0TGtibhCTj6VCPM3CyRsCuKlywKY2-yPR1AxLimR6ufg-oUbi-FckE&usqp=CAU",
      video_url: "",
      category: cognitive
    },
    {
      title: "Matching Lids",
      description: "All you need is a couple of empty plastic bottles and lids.",
      object: "Bottles",
      age_group: "13 - 24 mths",
      image_url: "https://cdn.handsonaswegrow.com/wp-content/uploads/2016/04/Sequence.jpg",
      video_url: "",
      category: cognitive
    },
    {
      title: "Hide Toys",
      description: "Hide a toy somewhere in the house, and ask your child to
      find it. Explore with them, using cues like warmer and colder to guide them.
      You can also use flashlights for the search or hide several objects at
      one time.",
      object: "Toys",
      age_group: "25 - 36 mths",
      image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmM1r4yoiBSrIM3dffw3ZMED054peYBUgwoDVLcOR9jq9drNuwGqdOYbm8_PLUx9jwzcA&usqp=CAU",
      video_url: "",
      category: cognitive
    },
    {
      title: "Green Orange Red Light",
      description: "Get your child driving around in a pretend car. When you say
      green light, they must move around really quickly, orange light, they go slowly
      and red light they have to stop and stand still." ,
      object: "",
      age_group: "13 - 24 mths",
      image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE7LjoTO70SVAaf1KavGbKS91Pl4qgV5bHcQ&usqp=CAU",
      video_url: "",
      category: cognitive
    },
    {
      title: "Sing Along",
      description: "Anything that pops in your mind! Hint: Twinkle twinkle little star!
      Cocomelon if you need extra help.",
      object: "",
      age_group: "13 - 24 mths",
      image_url: "http://www.readingbrightstart.org/wp-content/uploads/2015/03/animal-singalong.jpg",
      video_url: "",
      category: cognitive
    },
    {
      title: "Guess The Animal",
      description: "Make some animal sounds and ask the your child what animal it is.",
      object: "",
      age_group: "25 - 36 mths",
      image_url: "https://play-lh.googleusercontent.com/MWG4adp0FnC_otvGjVeyPYs2FiqaaE-z-obZH4Zp0BAzC4bREeDAk_kf0oirzjA8FRo",
      video_url: "",
      category: cognitive
    },
    {
      title: "Learning Colours",
      description: "Point to the item and say the colour and what it is.",
      object: "",
      age_group: "25 - 36 mths",
      image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE6CkSwE2rMT52IwE3LwYA3lr8gySlFkqBog&usqp=CAU",
      video_url: "",
      category: cognitive
    },
    {
      title: "Texture Exploring",
      description: "Let your child explore different textures around them. You may
      also input opposites such as 'hard' or 'soft', 'smooth' or 'rough'.",
      object: "",
      age_group: "0 - 12 mths",
      image_url: "https://1.bp.blogspot.com/-pDKCKBeSz-A/XzZ6Qt7hVoI/AAAAAAAAcM8/EM87qxUOvYUpcM2fH7KdxjRTETFelNL_gCLcBGAsYHQ/s2048/IMG_4278.jpg",
      video_url: "",
      category: cognitive
    }
  ]
)
puts "Created cognitive activities!"

puts "Creating fine motor activities.."
Activity.create(
  [
    {
      title: "Row, Row, Row Your Boat",
      description: "In this indoor fine motor exercise, sit your child to face
      you with feet touching. Hold hands and lean forward and backward while
      singing the classic song. No additional props required.",
      object: "",
      age_group: "0 - 12 mths",
      image_url: "https://theinspiredtreehouse.com/wp-content/uploads/2014/01/fun-sensory-activities-row-your-boat-square.jpg",
      video_url: "",
      category: fine_motor
    },
    {
      title: "Build a Tower",
      description: "Need a supply of blocks, containers with lids or another
      similar, stackable object. Using your item of choice, build a tower with
      your child. Take turns adding blocks or containers to the tower and see
      how high your child can stack them. You can count the number of
      stacked items together, and then when the tower is complete, your child
      can knock it down.",
      object: "Blocks",
      age_group: "25 - 36 mths",
      image_url: "https://www.howwemontessori.com/.a/6a0147e1d4f40f970b017743f34f16970d-pi",
      video_url: "",
      category: fine_motor
    },
    {
      title: "Toss Balls in a Basket",
      description: "Give your child foam or rubber balls to roll back and forth
      to you, or toss the balls into a basket. During this activity, exercise
      caution with younger children who might bite foam balls.
      Avoid small balls that toddlers could put in their mouths and swallow.",
      object: "Ball, Basket",
      age_group: "13 - 24 mths",
      image_url: "https://i.shgcdn.com/a75502b6-303a-457d-a3aa-748cb16dd231/-/format/auto/-/preview/3000x3000/-/quality/lighter/",
      video_url: "",
      category: fine_motor
    },
    {
      title: "Throw Sponges",
      description: "This outdoor activity is great for a hot day.
      Take wet sponges and toss them toward a container or bin. Compare how far
      you and your child can throw sponges of different sizes or how different
      amounts of water affect the distance the sponge travels.",
      object: "Sponges, Water, Container",
      age_group:"25 - 36 mths",
      image_url: "https://playtivities.com/wp-content/uploads/2021/05/13-sponge-toss.jpg.webp",
      video_url: "",
      category: fine_motor
    },
    {
      title: "Hit the Balloon",
      description: "Encourage your child to keep a balloon from touching the
      ground by hitting it upwards with their hands. You can also place an item
      between two children, such as a chair or pillow, and instruct them to hit
      the balloon over the barrier to the other child.",
      object: "Balloon",
      age_group: "25 - 36 mths",
      image_url: "https://www.hellowonderful.co/wp-content/uploads/2020/03/balloon-tennis-game-kids.jpg.webp",
      video_url: "",
      category: fine_motor
    },
    {
      title: "Feed the Lion",
      description: "On a cardboard box, draw or paint a lion's head and cut a
      hole for the lion's mouth. Encourage your child to take the crumpled paper balls and
      try to toss them into the lion's mouth. Afterward, count how many balls
      they have fed the lion.",
      object: "Cardboard, Paper",
      age_group: "25 - 36 mths",
      image_url: "https://rainydaymum.co.uk/wp-content/uploads/2018/04/feed-the-lion-counting-game-for-toddlers-and-preschoolers-feature.jpg",
      video_url: "",
      category: fine_motor
    },
    {
      title: "Ping Pong Throw",
      description: "Throw the ping pong ball into the container.",
      object: "Ping pong balls",
      age_group: "0 - 12 mths",
      image_url: "https://images.squarespace-cdn.com/content/v1/5d45a91328f0880001bbe424/1566872221166-A36JCBSW0D23F1RH5CUA/pongcup_1.jpg?format=1000w",
      video_url:"",
      category: fine_motor
    },
    {
      title: "Drawing",
      description: "Little artists can express themselves by drawing on a layer of flour on a tray.",
      object: "Flour",
      age_group: "13 - 24 mths",
      image_url: "https://i.ytimg.com/vi/qXXB72t7kCc/maxresdefault.jpg",
      video_url: "",
      category: fine_motor
    },
    {
      title: "Clean Up",
      description: "Give your child a mini broom and dustpan, and spend
      some time making the floor all spick and span.",
      object: "Broom, Dustpan",
      age_group: "13 - 24 mths",
      image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVO2pmNE9cUGvyXBUuE_ZXS5gke-sKWNTcJA&usqp=CAU",
      video_url: "",
      category: fine_motor
    },
    {
      title:"Tape Art",
      description: "Let your child peel and stick tape on the floor, tray, wall, etc.
      You can also create patterns with coloured tapes with your child!" ,
      object: "Tape",
      age_group: "13 - 24 mths",
      image_url: "https://laughingkidslearn.com/wp-content/uploads/2016/01/Pulling-sticky-tape-off-table.jpg",
      video_url: "",
      category: fine_motor
    },
    {
      title: "Foil Art",
      description: "Ball the foil up into shapes, cover items or make imprints of them.",
      object: "Foil",
      age_group: "13 - 24 mths",
      image_url: "https://rukminim1.flixcart.com/image/800/800/k1118cw0/foil-shrinkwrap/n/z/q/9-af9m-supreme-bazaar-original-imafjz887cmsumfh.jpeg?q=90",
      video_url: "",
      category: fine_motor
    },
    {
      title:"Stacking Cups",
      description: "Stack cups as high as you and your child can!",
      object: "Cups",
      age_group: "13 - 24 mths",
      image_url: "https://cdn.handsonaswegrow.com/wp-content/uploads/2012/05/2012_05_092.jpg",
      video_url: "",
      category: fine_motor
    }
  ]
)
puts "Created fine motor activities!"

puts "Creating gross motor activities.."
Activity.create(
  [
    {
      title: "Musical Hide and Seek",
      description: "Play music from a phone and hide it from the children.
      You and the children can then search together to figure out where the
      music is coming from. This activity will be fun for the toddlers and
      will get them moving.",
      object: "Music, Phone",
      age_group: "0 - 12 mths",
      image_url: "https://i.dailymail.co.uk/i/pix/2016/11/18/18/3A86BC9100000578-0-image-a-4_1479493399222.jpg",
      video_url: "",
      category: gross_motor
    },
    {
      title: "Imitate Animals",
      description: "While on their hands and knees, toddlers move, stretch and play like animals.
      They can hop like a frog or waddle like a penguin.
      They can arch their backs, roll on their backs, reach as high as they can and walk on all fours.
      Choose a variety of animals and movements to keep children engaged and using their whole bodies to stay active.",
      object: "",
      age_group: "25 - 36 mths",
      image_url: "https://lemonlimeadventures.com/wp-content/uploads/2015/01/Animal-Walk-Exercises.jpg",
      video_url: "",
      category: gross_motor
    },
    {
      title:"Where Are We Going?",
      description: "Lay out a towel on the floor and have your
      toddler sit on it, gently pull them around the room. Pretend the towel
      is a train or a boat and that you are stopping at different places,
      like the zoo, the grocery store, or a favorite restaurant.",
      object: "Towel",
      age_group: "0 - 12 mths",
      image_url: "https://3.bp.blogspot.com/-hC0NM37SVFU/V8bHRi6XZjI/AAAAAAAAX5A/yv2J-S929TQUPWQrRLzoN7zfMQYtHb0FwCLcB/s640/IMG_3259.JPG",
      video_url: "",
      category: gross_motor
    },
    {
      title: "Knock It Off",
      description: "Put a small ball on top of a paper cup. Practice only
      kicking the ball off the cup without knocking the cup over." ,
      object: "Ball, Cup",
      age_group: "13 - 24 mths",
      image_url: "https://www.ordinaryreviews.com/wp-content/uploads/2019/07/ball-and-cup-carnival-games-800x451.jpg",
      video_url: "",
      category: gross_motor
    },
    {
      title: "Tug of War",
      description: "Play tug of war with a towel.",
      object: "Towel",
      age_group: "13 - 24 mths",
      image_url: "https://t7.xframe.io/000/102/817/102817.jpg?auto=format&fit=crop&w=800&q=80&ixlib=react-9.4.0",
      video_url: "",
      category: gross_motor
    },
    {
      title: "Step Up",
      description: "Do step ups using a small stool. You may play music for
      your child to follow the tempo.",
      object: "Stool",
      age_group: "13 - 24 mths",
      image_url: "https://tracycosmetic.com/wp-content/uploads/2022/07/61kRXeV8pKL._AC_SL1500_-600x1084.jpg",
      video_url: "",
      category: gross_motor
    },
    {
      title: "Bowling",
      description: "Use cups and set up bowling. Bowl with a ball or roll into the cups with your body.",
      object: "Ball, Cups",
      age_group: "25 - 36 mths",
      image_url: "https://i.pinimg.com/originals/71/58/bb/7158bb49e55575a6bf437611f0a9071b.jpg",
      video_url: "",
      category: gross_motor
    },
    {
      title: "Mountain Jump",
      description: "Jump over paper cups. Stack them higher after each successful jump!" ,
      object: "Cups",
      age_group: "25 - 36 mths",
      image_url: "https://mykidcraft.com/images/Christmas-Tree-Stacking-Christmas-Tree-Paper-Cups-Toddler-Activity1.jpg",
      video_url: "",
      category: gross_motor
    },
    {
      title:"Side to Side",
      description: "Jump side to side over a shoelace on the floor.",
      object: "Shoelace",
      age_group: "13 - 24 mths",
      image_url: "https://media.istockphoto.com/photos/trendy-kid-jumping-and-screaming-picture-id1152823461?k=20&m=1152823461&s=612x612&w=0&h=gDuKP-2mHrpfufiwl8fy9DKOCGA84mPDnrwVrI1Slsk=",
      video_url: "",
      category: gross_motor
    },
    {
      title: "Push",
      description: "As an added challenge to keeping toys or picking up laundry,
      you can ask your child to push the basket to where it is supposed to be.",
      object: "Basket",
      age_group: "13 - 24 mths",
      image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqD26kKs0y8TjNDQ0de0e5e2PgxQdKRPZN9w&usqp=CAU",
      video_url: "",
      category: gross_motor
    },
    {
      title: "Walking on a Balance Beam",
      description: "Using tape, create a tape balance beam on the floor for
      your child to walk along. You can extend the path all around the house to
      keep them entertained for hours!",
      object: "Tape",
      age_group: "25 - 36 mths",
      image_url: "https://cdn.handsonaswegrow.com/wp-content/uploads/2015/06/lines-of-tape-activities-20150530-8641.jpg",
      video_url: "",
      category: gross_motor
    },
    {
      title: "The Ball Waddle",
      description: "Place a ball between your child knees and get them to waddle across the room without dropping it.",
      object: "Ball",
      age_group: "25 - 36 mths",
      image_url: "https://www.yourkidsot.com/uploads/2/4/0/3/24030117/2_1_orig.png",
      video_url: "",
      category: gross_motor
    },
    {
      title: "Balancing Act",
      description: "Use a stopwatch and record how long your child can balance on one foot.
      With each repetition, they may also switch legs as the goal is to beat their time." ,
      object: "",
      age_group: "13 - 24 mths",
      image_url: "https://theinspiredtreehouse.com/wp-content/uploads/2017/04/single-leg-stance-twitter.png",
      video_url: "",
      category: gross_motor
    }
  ]
)
puts "Created gross motor activities!"

puts 'Finished!'
