module TodosController::FunSuggestions
  extend ActiveSupport::Concern

  SUGGESTIONS = [
    { title_placeholder: "Adopt a cat", description_placeholder: "Visit the local shelter and file the paperwork for the first cat that meows at me" },
    { title_placeholder: "Start a garden", description_placeholder: "Buy seeds for herbs or veggies and plant them in my backyard or in pots" },
    { title_placeholder: "Try a new recipe", description_placeholder: "Find a recipe for a dish I've never cooked and make it for dinner" },
    { title_placeholder: "Run a 5k", description_placeholder: "Sign up for a local fun run and train for it over the next month" },
    { title_placeholder: "Write a poem", description_placeholder: "Spend 10 minutes writing a poem about my favorite memory" },
    { title_placeholder: "Paint a picture", description_placeholder: "Get out some paints and canvas and create something colorful and abstract" },
    { title_placeholder: "Plan a picnic", description_placeholder: "Pack a basket with snacks and head to the nearest park for a relaxing afternoon" },
    { title_placeholder: "Learn a magic trick", description_placeholder: "Watch a tutorial online and practice a simple card trick" },
    { title_placeholder: "Declutter a drawer", description_placeholder: "Pick one drawer and sort through it to organize or toss what I don’t need" },
    { title_placeholder: "Watch a classic movie", description_placeholder: "Pick a movie I've never seen from the top 100 list and enjoy it with popcorn" },
    { title_placeholder: "Do a random act of kindness", description_placeholder: "Buy coffee for the person behind me in line or leave a kind note for someone" },
    { title_placeholder: "Call a friend", description_placeholder: "Catch up with someone I haven’t talked to in a while and brighten their day" },
    { title_placeholder: "Bake cookies", description_placeholder: "Try baking a new flavor, like lavender or white chocolate macadamia" },
    { title_placeholder: "Learn to juggle", description_placeholder: "Grab some tennis balls and see if I can manage three in the air" },
    { title_placeholder: "Try yoga", description_placeholder: "Follow an online beginner’s yoga class and see how it makes me feel" },
    { title_placeholder: "Visit a museum", description_placeholder: "Spend a morning exploring local art, history, or science exhibits" },
    { title_placeholder: "Sketch in a journal", description_placeholder: "Draw something I see outside my window or from my imagination" },
    { title_placeholder: "Organize a bookshelf", description_placeholder: "Sort my books by color, size, or genre for a fresh look" },
    { title_placeholder: "Try a new coffee shop", description_placeholder: "Find a cafe I’ve never been to and order the barista’s recommendation" },
    { title_placeholder: "Make a playlist", description_placeholder: "Curate a playlist for a specific mood or activity, like 'Chill Sundays'" },
    { title_placeholder: "Write a thank-you note", description_placeholder: "Send a handwritten note to someone who made a difference in my life" },
    { title_placeholder: "Go stargazing", description_placeholder: "Head to a dark spot at night and see how many constellations I can find" },
    { title_placeholder: "Learn to whistle", description_placeholder: "Practice until I can whistle a short tune" },
    { title_placeholder: "Experiment with photography", description_placeholder: "Take pictures of interesting shadows or textures around my home" },
    { title_placeholder: "Plan a weekend trip", description_placeholder: "Research a nearby destination for a short getaway and set a date" },
    { title_placeholder: "Fly a kite", description_placeholder: "Find a breezy spot and enjoy the simple fun of kite flying" },
    { title_placeholder: "Make homemade ice cream", description_placeholder: "Try making a unique flavor like mint chocolate chip or mango" },
    { title_placeholder: "Write a short story", description_placeholder: "Create a fun story idea and spend an hour bringing it to life" },
    { title_placeholder: "Dance in my living room", description_placeholder: "Put on a favorite song and let loose for a few minutes" },
    { title_placeholder: "Plant a tree", description_placeholder: "Find a spot in my yard or a community area and plant something lasting" },
    { title_placeholder: "Explore a new neighborhood", description_placeholder: "Take a walk or drive to a part of town I’ve never been to before" },
    { title_placeholder: "Make a vision board", description_placeholder: "Cut out images and words from magazines that inspire me and glue them on a poster" },
    { title_placeholder: "Create a DIY craft", description_placeholder: "Look up a tutorial and make something fun, like a macrame plant hanger" },
    { title_placeholder: "Write a song", description_placeholder: "Compose lyrics about my day and hum a simple melody" },
    { title_placeholder: "Try a new workout", description_placeholder: "Join a class or follow an online routine I’ve never done before" },
    { title_placeholder: "Volunteer locally", description_placeholder: "Sign up to help at an animal shelter, food bank, or community event" },
    { title_placeholder: "Go birdwatching", description_placeholder: "Grab binoculars and a guidebook to spot local birds in my area" },
    { title_placeholder: "Start a gratitude journal", description_placeholder: "Write down three things I’m thankful for today" },
    { title_placeholder: "Build a puzzle", description_placeholder: "Pick out a challenging puzzle and dedicate an afternoon to completing it" },
    { title_placeholder: "Learn a new word", description_placeholder: "Find an interesting word in the dictionary and use it in a sentence" },
    { title_placeholder: "Try a new tea flavor", description_placeholder: "Pick something unusual like chai lavender or pineapple oolong" },
    { title_placeholder: "Make a scrapbook", description_placeholder: "Collect photos and mementos to document a favorite memory or trip" },
    { title_placeholder: "Read a short story", description_placeholder: "Pick a story from an anthology or online and enjoy a quick literary escape" },
    { title_placeholder: "Rearrange a room", description_placeholder: "Move furniture around to give a space a fresh look" },
    { title_placeholder: "Learn origami", description_placeholder: "Try folding a paper crane or other simple designs" },
    { title_placeholder: "Plan a themed dinner night", description_placeholder: "Cook dishes and decorate based on a theme like 'Mediterranean' or 'Taco Tuesday'" },
    { title_placeholder: "Go for a hike", description_placeholder: "Find a nearby trail and enjoy nature for an hour or two" },
    { title_placeholder: "Host a game night", description_placeholder: "Invite friends over for board games or card games" },
    { title_placeholder: "Do a DIY facial", description_placeholder: "Pamper myself with a homemade face mask using natural ingredients" }
  ]

  def load_fun_suggestion
    @fun_suggestion = SUGGESTIONS.sample
  end
end
