# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Review.destroy_all
Wishlist.destroy_all
Heart.destroy_all
Child.destroy_all
User.destroy_all
ActivityItem.destroy_all
Item.destroy_all
Activity.destroy_all
Category.destroy_all

puts "Creating Users"
%w[goh kyla yaamanni jielin].each do |user|
  parent_profile =
    User.create(
      username: user,
      email: "#{user}@playsnap.com",
      password: "playsnap"
    )
  puts "Finished creating users"

  puts "Creating Child"
  Child.create(
    name: %w[daniele whysee easun anndie].sample,
    age: (0..36).to_a.sample,
    gender: %w[male female].sample,
    user: parent_profile
  )
  puts "Finished creating child"
  puts "Finished creating users with children"
end

puts "Creating Categories..."

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

puts "Categories created!"

ball = Item.create(name: "Ball")
balls = Item.create(name: "Balls")
spoon = Item.create(name: "Spoon")
storybook = Item.create(name: "Storybook")
puppet = Item.create(name: "Puppet")
snack = Item.create(name: "Snack")
colour_pencil = Item.create(name: "Colour Pencil")
paper = Item.create(name: "Paper")
soap = Item.create(name: "Soap")
toy = Item.create(name: "Toy")
bowl = Item.create(name: "Bowl")
bottles = Item.create(name: "Bottles")
blocks = Item.create(name: "Blocks")
basket = Item.create(name: "Basket")
sponges = Item.create(name: "Sponges")
water = Item.create(name: "Water")
container = Item.create(name: "Container")
balloon = Item.create(name: "Balloon")
cardboard = Item.create(name: "Cardboard")
ping_pong_balls = Item.create(name: "Ping Pong Balls")
flour = Item.create(name: "Flour")
broom = Item.create(name: "Broom")
dustpan = Item.create(name: "Dustpan")
tape = Item.create(name: "Tape")
foil = Item.create(name: "Foil")
cups = Item.create(name: "Cups")
music = Item.create(name: "Music")
phone = Item.create(name: "Phone")
towel = Item.create(name: "Towel")
stool = Item.create(name: "Stool")
shoelace = Item.create(name: "Shoelace")

puts "Creating social activities.."

ball_up =
  Activity.new(
    {
      title: "Ball Up",
      description:
        "Encourage the children to work together to keep the ball up in the air.",
      age_group: "25 - 36 mths",
      image_url:
        "https://cdn.cdnparenting.com/articles/2022/01/21173905/27318151.jpg",
      video_url: "",
      category: social
    }
  )
ball_up.items = [ball]
ball_up.save!

ball_spoon =
  Activity.new(
    {
      title: "Ball & Spoon Race",
      description:
        "Balance a ball on a spoon. Either set up a straight race
    where everyone races at once to the finish line. Or complete an
    alternating relay.",
      age_group: "25 - 36 mths",
      image_url:
        "https://www.beafunmum.com/wp-content/uploads/2015/03/BigW-Easter_092.jpg",
      video_url: "",
      category: social
    }
  )
ball_spoon.items = [ball, spoon]
ball_spoon.save!

puts "Created social activities!"

puts "Creating emotional activities.."
Activity.create(
  {
    title: "Let's Cook",
    description:
      "Act out how to prepare meals and eating together with your child.",
    age_group: "13 - 24 mths",
    image_url:
      "https://upload.wikimedia.org/wikipedia/commons/f/fd/Kids%27s_game_cooking_yakisoba_by_yamakazz.jpg",
    video_url: "",
    category: emotional
  }
)

storytime =
  Activity.new(
    {
      title: "Storytime",
      description:
        "Read a story together and discuss the content to develop empathy.
    You may ask questions such as 'Why did the character feel sad', or 'How do you
    think this made him / her feel?'",
      age_group: "25 - 36 mths",
      image_url:
        "https://www.parents.com/thmb/Gcsnu4v_x1j02kptKX08Jgq0WL4=/1600x1200/smart/filters:no_upscale()/noltelourens-2fd83e1022184dcbaca0cbd17d1759ce.jpg",
      video_url: "",
      category: emotional
    }
  )
storytime.items = [storybook]
storytime.save!

puppet_play =
  Activity.new(
    {
      title: "Puppet Play",
      description:
        "User puppets to act out social situations and see if your
    child can recognise and understand emotions. Interactions can include asking
    your child how should the puppet respond, or if the puppet's behaviour is acceptable.",
      age_group: "25 - 36 mths",
      image_url:
        "https://empoweredparents.co/wp-content/uploads/2019/10/social-emotional-activities-for-preschoolers-3.jpg.webp",
      video_url: "",
      category: emotional
    }
  )
puppet_play.items = [puppet]
puppet_play.save!

Activity.create(
  {
    title: "Scissors Paper Stone",
    description:
      "This simple game encourages your child to understand game rules,
    taking turns, and controlling their emotions when they are frustrated.",
    age_group: "25 - 36 mths",
    image_url:
      "https://img.freepik.com/premium-photo/cute-kids-play-stone-paper-scissors-have-fun-white-background_332033-262.jpg?w=2000",
    video_url: "",
    category: emotional
  }
)

share_snacks =
  Activity.new(
    {
      title: "Share My Snacks",
      description:
        "Ask your child to share his / her favourite snacks with the people around.",
      age_group: "13 - 24 mths",
      image_url:
        "https://cdn.cdnparenting.com/articles/2018/04/617915693-H.jpg",
      video_url: "",
      category: emotional
    }
  )
share_snacks.items = [snack]
share_snacks.save!

Activity.create(
  {
    title: "P's and Q's",
    description:
      "Encourage your child to say something kind or polite such as
    'please', 'thank you', and 'I love you' to people around them.",
    age_group: "13 - 24 mths",
    image_url:
      "http://www.enannysource.com/blog/wp-content/uploads/2012/02/thankyou.jpg",
    video_url: "",
    category: emotional
  }
)

scribble_draw =
  Activity.new(
    {
      title: "Scribble and Draw",
      description:
        "Encourage your child to scribble or draw their emotions, and
    talk about it.",
      age_group: "25 - 36 mths",
      image_url:
        "https://live.staticflickr.com/324/18626345783_5a136635a0_b.jpg",
      video_url: "",
      category: emotional
    }
  )
scribble_draw.items = [colour_pencil, paper]
scribble_draw.save!

blowing_bubbles =
  Activity.new(
    {
      title: "Blowing Bubbles",
      description:
        "Play breathing exercises to teach your child appropriate
    breathing techniques which could be applied when they are feeling anxious.
    You may also play pretend to blow and pop the bubbles to release their frustrations",
      age_group: "25 - 36 mths",
      image_url:
        "https://www.merakilane.com/wp-content/uploads/2018/03/Breathing-Techniques-for-Anxiety.png",
      video_url: "",
      category: emotional
    }
  )
blowing_bubbles.items = [soap]
blowing_bubbles.save!

buddy =
  Activity.new(
    {
      title: "My Buddy",
      description:
        "Encourage your child to cheer up their soft toy who is feeling
    upset by using words of encouragement, giving hugs, problem-solving etc.",
      age_group: "25 - 36 mths",
      image_url: "https://live.staticflickr.com/4025/4621636637_96f7f3832b.jpg",
      video_url: "",
      category: emotional
    }
  )
buddy.items = [toy]
buddy.save!

Activity.create(
  {
    title: "Simon Says",
    description:
      "Play a fun game of Simon Says to get your child to listen
    closely to your instructions and performing them accordingly.",
    age_group: "25 - 36 mths",
    image_url:
      "https://empoweredparents.co/wp-content/uploads/2021/10/Children-playing-Simon-Says.jpg",
    video_url: "",
    category: emotional
  }
)
puts "Created emotional activities!"

puts "Creating cognitive activities.."
sorting_colours =
  Activity.create(
    {
      title: "Sorting Colours",
      description:
        "Ask your child to find items of the same colour and place
    them in a matching bowl.",
      age_group: "13 - 24 mths",
      image_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_c4-7bacY1fbVq0TGtibhCTj6VCPM3CyRsCuKlywKY2-yPR1AxLimR6ufg-oUbi-FckE&usqp=CAU",
      video_url: "",
      category: cognitive
    }
  )
sorting_colours.items = [bowl]
sorting_colours.save!

matching_lids =
  Activity.new(
    {
      title: "Matching Lids",
      description:
        "All you need is a couple of empty plastic bottles and lids.",
      age_group: "13 - 24 mths",
      image_url:
        "https://cdn.handsonaswegrow.com/wp-content/uploads/2016/04/Sequence.jpg",
      video_url: "",
      category: cognitive
    }
  )
matching_lids.items = [bottles]
matching_lids.save!

hide_toys =
  Activity.new(
    {
      title: "Hide Toys",
      description:
        "Hide a toy somewhere in the house, and ask your child to
    find it. Explore with them, using cues like warmer and colder to guide them.
    You can also use flashlights for the search or hide several items at
    one time.",
      age_group: "25 - 36 mths",
      image_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmM1r4yoiBSrIM3dffw3ZMED054peYBUgwoDVLcOR9jq9drNuwGqdOYbm8_PLUx9jwzcA&usqp=CAU",
      video_url: "",
      category: cognitive
    }
  )
hide_toys.items = [toy]
hide_toys.save!

Activity.create(
  [
    {
      title: "Green Orange Red Light",
      description:
        "Get your child driving around in a pretend car. When you say
      green light, they must move around really quickly, orange light, they go slowly
      and red light they have to stop and stand still.",
      age_group: "13 - 24 mths",
      image_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE7LjoTO70SVAaf1KavGbKS91Pl4qgV5bHcQ&usqp=CAU",
      video_url: "",
      category: cognitive
    },
    {
      title: "Sing Along",
      description:
        "Anything that pops in your mind! Hint: Twinkle twinkle little star!
      Cocomelon if you need extra help.",
      age_group: "13 - 24 mths",
      image_url:
        "http://www.readingbrightstart.org/wp-content/uploads/2015/03/animal-singalong.jpg",
      video_url: "",
      category: cognitive
    },
    {
      title: "Guess The Animal",
      description:
        "Make some animal sounds and ask the your child what animal it is.",
      age_group: "25 - 36 mths",
      image_url:
        "https://play-lh.googleusercontent.com/MWG4adp0FnC_otvGjVeyPYs2FiqaaE-z-obZH4Zp0BAzC4bREeDAk_kf0oirzjA8FRo",
      video_url: "",
      category: cognitive
    },
    {
      title: "Learning Colours",
      description: "Point to the item and say the colour and what it is.",
      age_group: "25 - 36 mths",
      image_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE6CkSwE2rMT52IwE3LwYA3lr8gySlFkqBog&usqp=CAU",
      video_url: "",
      category: cognitive
    },
    {
      title: "Texture Exploring",
      description:
        "Let your child explore different textures around them. You may
      also input opposites such as 'hard' or 'soft', 'smooth' or 'rough'.",
      age_group: "0 - 12 mths",
      image_url:
        "https://1.bp.blogspot.com/-pDKCKBeSz-A/XzZ6Qt7hVoI/AAAAAAAAcM8/EM87qxUOvYUpcM2fH7KdxjRTETFelNL_gCLcBGAsYHQ/s2048/IMG_4278.jpg",
      video_url: "",
      category: cognitive
    }
  ]
)
puts "Created cognitive activities!"

puts "Creating fine motor activities.."

Activity.create(
  {
    title: "Row, Row, Row Your Boat",
    description:
      "In this indoor fine motor exercise, sit your child to face
    you with feet touching. Hold hands and lean forward and backward while
    singing the classic song. No additional props required.",
    age_group: "0 - 12 mths",
    image_url:
      "https://theinspiredtreehouse.com/wp-content/uploads/2014/01/fun-sensory-activities-row-your-boat-square.jpg",
    video_url: "",
    category: fine_motor
  }
)

build_tower =
  Activity.new(
    {
      title: "Build a Tower",
      description:
        "Need a supply of blocks, containers with lids or another
    similar, stackable object. Using your item of choice, build a tower with
    your child. Take turns adding blocks or containers to the tower and see
    how high your child can stack them. You can count the number of
    stacked items together, and then when the tower is complete, your child
    can knock it down.",
      age_group: "25 - 36 mths",
      image_url:
        "https://www.howwemontessori.com/.a/6a0147e1d4f40f970b017743f34f16970d-pi",
      video_url: "",
      category: fine_motor
    }
  )
build_tower.items = [blocks]
build_tower.save!

balls_basket =
  Activity.new(
    {
      title: "Toss Balls in a Basket",
      description:
        "Give your child foam or rubber balls to roll back and forth
    to you, or toss the balls into a basket. During this activity, exercise
    caution with younger children who might bite foam balls.
    Avoid small balls that toddlers could put in their mouths and swallow.",
      age_group: "13 - 24 mths",
      image_url:
        "https://i.shgcdn.com/a75502b6-303a-457d-a3aa-748cb16dd231/-/format/auto/-/preview/3000x3000/-/quality/lighter/",
      video_url: "",
      category: fine_motor
    }
  )
balls_basket.items = [balls, basket]
balls_basket.save!

throw_sponges =
  Activity.new(
    {
      title: "Throw Sponges",
      description:
        "This outdoor activity is great for a hot day.
    Take wet sponges and toss them toward a container or bin. Compare how far
    you and your child can throw sponges of different sizes or how different
    amounts of water affect the distance the sponge travels.",
      age_group: "25 - 36 mths",
      image_url:
        "https://playtivities.com/wp-content/uploads/2021/05/13-sponge-toss.jpg.webp",
      video_url: "",
      category: fine_motor
    }
  )
throw_sponges.items = [sponges, water, container]
throw_sponges.save!

hit_balloon =
  Activity.new(
    {
      title: "Hit the Balloon",
      description:
        "Encourage your child to keep a balloon from touching the
    ground by hitting it upwards with their hands. You can also place an item
    between two children, such as a chair or pillow, and instruct them to hit
    the balloon over the barrier to the other child.",
      age_group: "25 - 36 mths",
      image_url:
        "https://www.hellowonderful.co/wp-content/uploads/2020/03/balloon-tennis-game-kids.jpg.webp",
      video_url: "",
      category: fine_motor
    }
  )
hit_balloon.items = [balloon]
hit_balloon.save!

feed_lion =
  Activity.new(
    {
      title: "Feed the Lion",
      description:
        "On a cardboard box, draw or paint a lion's head and cut a
    hole for the lion's mouth. Encourage your child to take the crumpled paper balls and
    try to toss them into the lion's mouth. Afterward, count how many balls
    they have fed the lion.",
      age_group: "25 - 36 mths",
      image_url:
        "https://rainydaymum.co.uk/wp-content/uploads/2018/04/feed-the-lion-counting-game-for-toddlers-and-preschoolers-feature.jpg",
      video_url: "",
      category: fine_motor
    }
  )
feed_lion.items = [cardboard, paper]
feed_lion.save!

ping_pong_throw =
  Activity.new(
    {
      title: "Ping Pong Throw",
      description: "Throw the ping pong ball into the container.",
      age_group: "0 - 12 mths",
      image_url:
        "https://images.squarespace-cdn.com/content/v1/5d45a91328f0880001bbe424/1566872221166-A36JCBSW0D23F1RH5CUA/pongcup_1.jpg?format=1000w",
      video_url: "",
      category: fine_motor
    }
  )
ping_pong_throw.items = [ping_pong_balls]
ping_pong_throw.save!

drawing =
  Activity.new(
    {
      title: "Drawing",
      description:
        "Little artists can express themselves by drawing on a layer of flour on a tray.",
      age_group: "13 - 24 mths",
      image_url: "https://i.ytimg.com/vi/qXXB72t7kCc/maxresdefault.jpg",
      video_url: "",
      category: fine_motor
    }
  )
drawing.items = [flour]
drawing.save!

clean_up =
  Activity.new(
    {
      title: "Clean Up",
      description:
        "Give your child a mini broom and dustpan, and spend
    some time making the floor all spick and span.",
      age_group: "13 - 24 mths",
      image_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVO2pmNE9cUGvyXBUuE_ZXS5gke-sKWNTcJA&usqp=CAU",
      video_url: "",
      category: fine_motor
    }
  )
clean_up.items = [broom, dustpan]
clean_up.save!

tape_art =
  Activity.new(
    {
      title: "Tape Art",
      description:
        "Let your child peel and stick tape on the floor, tray, wall, etc.
    You can also create patterns with coloured tapes with your child!",
      age_group: "13 - 24 mths",
      image_url:
        "https://laughingkidslearn.com/wp-content/uploads/2016/01/Pulling-sticky-tape-off-table.jpg",
      video_url: "",
      category: fine_motor
    }
  )
tape_art.items = [tape]
tape_art.save!

foil_art =
  Activity.new(
    {
      title: "Foil Art",
      description:
        "Ball the foil up into shapes, cover items or make imprints of them.",
      age_group: "13 - 24 mths",
      image_url:
        "https://rukminim1.flixcart.com/image/800/800/k1118cw0/foil-shrinkwrap/n/z/q/9-af9m-supreme-bazaar-original-imafjz887cmsumfh.jpeg?q=90",
      video_url: "",
      category: fine_motor
    }
  )
foil_art.items = [foil]
foil_art.save!

stacking_cups =
  Activity.new(
    {
      title: "Stacking Cups",
      description: "Stack cups as high as you and your child can!",
      age_group: "13 - 24 mths",
      image_url:
        "https://cdn.handsonaswegrow.com/wp-content/uploads/2012/05/2012_05_092.jpg",
      video_url: "",
      category: fine_motor
    }
  )
stacking_cups.items = [cups]
stacking_cups.save!
puts "Created fine motor activities!"

puts "Creating gross motor activities.."
musical =
  Activity.new(
    {
      title: "Musical Hide and Seek",
      description:
        "Play music from a phone and hide it from the children.
    You and the children can then search together to figure out where the
    music is coming from. This activity will be fun for the toddlers and
    will get them moving.",
      age_group: "0 - 12 mths",
      image_url:
        "https://i.dailymail.co.uk/i/pix/2016/11/18/18/3A86BC9100000578-0-image-a-4_1479493399222.jpg",
      video_url: "",
      category: gross_motor
    }
  )
musical.items = [music, phone]
musical.save!

Activity.create(
  {
    title: "Imitate Animals",
    description:
      "While on their hands and knees, toddlers move, stretch and play like animals.
    They can hop like a frog or waddle like a penguin.
    They can arch their backs, roll on their backs, reach as high as they can and walk on all fours.
    Choose a variety of animals and movements to keep children engaged and using their whole bodies to stay active.",
    age_group: "25 - 36 mths",
    image_url:
      "https://lemonlimeadventures.com/wp-content/uploads/2015/01/Animal-Walk-Exercises.jpg",
    video_url: "",
    category: gross_motor
  }
)

going =
  Activity.new(
    {
      title: "Where Are We Going?",
      description:
        "Lay out a towel on the floor and have your
    toddler sit on it, gently pull them around the room. Pretend the towel
    is a train or a boat and that you are stopping at different places,
    like the zoo, the grocery store, or a favorite restaurant.",
      age_group: "0 - 12 mths",
      image_url:
        "https://3.bp.blogspot.com/-hC0NM37SVFU/V8bHRi6XZjI/AAAAAAAAX5A/yv2J-S929TQUPWQrRLzoN7zfMQYtHb0FwCLcB/s640/IMG_3259.JPG",
      video_url: "",
      category: gross_motor
    }
  )
going.items = [towel]
going.save!

knock_off =
  Activity.new(
    {
      title: "Knock It Off",
      description:
        "Put a small ball on top of a paper cup. Practice only
    kicking the ball off the cup without knocking the cup over.",
      age_group: "13 - 24 mths",
      image_url:
        "https://www.ordinaryreviews.com/wp-content/uploads/2019/07/ball-and-cup-carnival-games-800x451.jpg",
      video_url: "",
      category: gross_motor
    }
  )
knock_off.items = [balls, cups]
knock_off.save!

tug_war =
  Activity.new(
    {
      title: "Tug of War",
      description: "Play tug of war with a towel.",
      age_group: "13 - 24 mths",
      image_url:
        "https://t7.xframe.io/000/102/817/102817.jpg?auto=format&fit=crop&w=800&q=80&ixlib=react-9.4.0",
      video_url: "",
      category: gross_motor
    }
  )
tug_war.items = [towel]
tug_war.save!

step_up =
  Activity.new(
    {
      title: "Step Up",
      description:
        "Do step ups using a small stool. You may play music for
    your child to follow the tempo.",
      age_group: "13 - 24 mths",
      image_url:
        "https://tracycosmetic.com/wp-content/uploads/2022/07/61kRXeV8pKL._AC_SL1500_-600x1084.jpg",
      video_url: "",
      category: gross_motor
    }
  )
step_up.items = [stool]
step_up.save!

bowling =
  Activity.new(
    {
      title: "Bowling",
      description:
        "Use cups and set up bowling. Bowl with a ball or roll into the cups with your body.",
      age_group: "25 - 36 mths",
      image_url:
        "https://i.pinimg.com/originals/71/58/bb/7158bb49e55575a6bf437611f0a9071b.jpg",
      video_url: "",
      category: gross_motor
    }
  )
bowling.items = [ball, cups]
bowling.save!

mountain_jump =
  Activity.new(
    {
      title: "Mountain Jump",
      description:
        "Jump over paper cups. Stack them higher after each successful jump!",
      age_group: "25 - 36 mths",
      image_url:
        "https://mykidcraft.com/images/Christmas-Tree-Stacking-Christmas-Tree-Paper-Cups-Toddler-Activity1.jpg",
      video_url: "",
      category: gross_motor
    }
  )
mountain_jump.items = [cups]
mountain_jump.save!

side =
  Activity.new(
    {
      title: "Side to Side",
      description: "Jump side to side over a shoelace on the floor.",
      age_group: "13 - 24 mths",
      image_url:
        "https://media.istockphoto.com/photos/trendy-kid-jumping-and-screaming-picture-id1152823461?k=20&m=1152823461&s=612x612&w=0&h=gDuKP-2mHrpfufiwl8fy9DKOCGA84mPDnrwVrI1Slsk=",
      video_url: "",
      category: gross_motor
    }
  )
side.items = [shoelace]
side.save!

push =
  Activity.new(
    {
      title: "Push",
      description:
        "As an added challenge to keeping toys or picking up laundry,
    you can ask your child to push the basket to where it is supposed to be.",
      age_group: "13 - 24 mths",
      image_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqD26kKs0y8TjNDQ0de0e5e2PgxQdKRPZN9w&usqp=CAU",
      video_url: "",
      category: gross_motor
    }
  )
push.items = [basket]
push.save!

balance =
  Activity.new(
    {
      title: "Walking on a Balance Beam",
      description:
        "Using tape, create a tape balance beam on the floor for
    your child to walk along. You can extend the path all around the house to
    keep them entertained for hours!",
      age_group: "25 - 36 mths",
      image_url:
        "https://cdn.handsonaswegrow.com/wp-content/uploads/2015/06/lines-of-tape-activities-20150530-8641.jpg",
      video_url: "",
      category: gross_motor
    }
  )
balance.items = [tape]
balance.save!

waddle =
  Activity.new(
    {
      title: "The Ball Waddle",
      description:
        "Place a ball between your child knees and get them to waddle across the room without dropping it.",
      age_group: "25 - 36 mths",
      image_url:
        "https://www.yourkidsot.com/uploads/2/4/0/3/24030117/2_1_orig.png",
      video_url: "",
      category: gross_motor
    }
  )
waddle.items = [ball]
waddle.save!

Activity.create(
  {
    title: "Balancing Act",
    description:
      "Use a stopwatch and record how long your child can balance on one foot.
    With each repetition, they may also switch legs as the goal is to beat their time.",
    age_group: "13 - 24 mths",
    image_url:
      "https://theinspiredtreehouse.com/wp-content/uploads/2017/04/single-leg-stance-twitter.png",
    video_url: "",
    category: gross_motor
  }
)
puts "Created gross motor activities!"

puts "Creating review for feed the lion"
goh = User.find_by(username: "goh")
kyla = User.find_by(username: "kyla")
yaam = User.find_by(username: "yaamanni")
jie = User.find_by(username: "jielin")

Review.create(
  [
    {
      content:
        "I like this activity because my baby #{goh.children.first.name} loves lion. We had fun.",
      rating: 5,
      activity: feed_lion,
      user: goh
    },
    {
      content: "I don't like this because my baby is scared.",
      rating: 1,
      activity: feed_lion,
      user: kyla
    },
    {
      content:
        "Abit difficult to get the whole thing up but it helps me to stop my niece crying.",
      rating: 4,
      activity: feed_lion,
      user: yaam
    },
    {
      content: "Amazing recommendation, sending loves from Croatia",
      rating: 4,
      activity: feed_lion,
      user: jie
    }
  ]
)

puts "Creating more users"
users = [
  "He Fong",
  "Sammie Leong",
  "Joey Tan",
  "Want Wanting Wanted",
  "Munna Hersi",
  "Johnathan 2",
  "Kavitaz",
  "Vannessa",
  "Leon Chau Wei",
  "Jenn Lopez",
  "Jueliet Romio",
  "Timmonthy Anthony",
  "Dannii Malek",
  "Ting Wheyyyyy",
  "Chris Nolen",
  "Why ABC",
  "Annita",
  "Easy Peasy",
  "Dan niu",
  "Ashlie Ketchum",
  "Lianawat",
  "John Doe",
  "TurboSlayer",
  "CrypticHatter",
  "CrashTV",
  "Blue Defender",
  "Iron Merc",
  "Steel Titan",
  "Stealthed Defender",
  "deluxe_vegan",
  "music.czar",
  "readingpro",
  "bandalls",
  "wattlexp",
  "sweetiele",
  "hyperyaufarer",
  "editussion",
  "experthead",
  "flames bria",
  "heroanhart",
  "liveltekah",
  "linguss",
  "interestec",
  "fuzzys puffy",
  "monsterup",
  "milka1baby",
  "loves00",
  "edgymnerch",
  "ort spoon",
  "oranolio",
  "one mama",
  "draven fact",
  "really chel",
  "reakefit",
  "popularkiya",
  "breacche",
  "blikimore",
  "stonewellforever",
  "simmson",
  "brighthulk",
  "bootecia",
  "spuffyffet",
  "rozalthiric",
  "bookman"
]

template_review = [
  {
    content: [
      "This is a very good activity leh! I will want to try it again next time.",
      "I will definitely like and share this",
      "Playsnap is the best app ever!",
      "Baby stopped crying instantly!! No more fussing! <3"
    ].sample,
    rating: 5
  },
  {
    content: [
      "This is not bad, will recommend to other parents to check it out",
      "Thanks playsnap, it helps!",
      "This is a fun activity, haha",
      "My LO can play independently, so happy!"
    ].sample,
    rating: 4
  },
  {
    content: [
      "Still ok ok, thanks playsnap for the recommendation. Will explore other activities",
      "So so, needed to adapt to make it more engaging.."
    ].sample,
    rating: 3
  },
  {
    content: [
      "Not very fun, kiddo gets bored after awhile..",
      "Not so clear about the activity description...",
      "It will be much better if there is a short video clip of how we can do it"
    ].sample,
    rating: 2
  },
  { content: "No comments", rating: 1 }
]

users.each do |user|
  commenter =
    User.create(
      username: user,
      email: "#{user.gsub(/[[:space:]]/, "")}@playsnap.com",
      password: "playsnap"
    )

  review = template_review.sample

  Activity.all.each do |activiti|
    random_num = (1..100).to_a.sample
    time = Time.now - random_num.day - random_num.hour - random_num.minute
    Review.create(
      {
        content: review[:content],
        rating: review[:rating],
        activity: activiti,
        created_at: time,
        updated_at: time,
        user: commenter
      }
    )
  end
end

puts "#{Review.count} Reviews created"

puts "Finished!"
