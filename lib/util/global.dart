import 'package:all_quotes/Model/QuotesModel.dart';
import 'package:flutter/material.dart';

import '../Model/CategoryModel.dart';

class Global {
  static Global g1 = Global();

  List<Map> quotesList = [
    {
      "quotes":
          "All our dreams can come true, if we have the courage to pursue them.",
      "author": "Walt Disney",
      "category": "motivation",
      "color": Colors.yellow
    },
    {
      "quotes": "The secret of getting ahead is getting started.",
      "author": "Mark Twain",
      "category": "motivation",
      "color": Colors.pink
    },
    {
      "quotes": "Only the paranoid survive.",
      "author": "Andy Grove",
      "category": "motivation",
      "color": Colors.blue
    },
    {
      "quotes": "It’s hard to beat a person who never gives up.",
      "author": "Babe Ruth",
      "category": "motivation",
      "color": Colors.deepOrange
    },
    {
      "quotes": "Everything you can imagine is real.",
      "author": "Pablo Picasso",
      "category": "motivation",
      "color": Colors.green
    },
    {
      "quotes": "Do one thing every day that scares you.",
      "author": "Eleanor Roosevelt",
      "category": "motivation",
      "color": Colors.cyan
    },
    {
      "quotes": "“Whatever you are, be a good one.",
      "author": "Abraham Lincoln",
      "category": "motivation",
      "color": Colors.cyanAccent
    },
    {
      "quotes": "Impossible is just an opinion.",
      "author": "Paulo Coelho",
      "category": "motivation",
      "color": Colors.amberAccent
    },
    {
      "quotes": "Hold the vision, trust the process.",
      "author": "Unknown",
      "category": "motivation",
      "color": Colors.pink
    },
    {
      "quotes": "It was a Monday and they walked on a tightrope to the sun.",
      "author": "Marcus Zusak",
      "category": "motivaion",
      "color": Colors.blue
    },
    {
      "quotes":
          "We cannot solve problems with the kind of thinking we employed when we came up with them.",
      "author": "Albert Einstein",
      "category": "success",
      "color": Colors.yellow
    },
    {
      "quotes":
          "Learn as if you will live forever, live like you will die tomorrow.",
      "author": "Mahatma Gandhi",
      "category": "success",
      "color": Colors.pink
    },
    {
      "quotes": "Either you run the day or the day runs you.",
      "author": "Jim Rohn",
      "category": "success",
      "color": Colors.blue
    },
    {
      "quotes":
          "Success is not final; failure is not fatal: It is the courage to continue that counts.",
      "author": "Winston S. Churchill",
      "category": "success",
      "color": Colors.deepOrange
    },
    {
      "quotes":
          "It is better to fail in originality than to succeed in imitation.",
      "author": " Herman Melville",
      "category": "success",
      "color": Colors.green
    },
    {
      "quotes":
          "The road to success and the road to failure are almost exactly the same.",
      "author": "Colin R. Davis",
      "category": "success",
      "color": Colors.cyan
    },
    {
      "quotes":
          "Success usually comes to those who are too busy looking for it.",
      "author": "Henry David Thoreau",
      "category": "success",
      "color": Colors.cyanAccent
    },
    {
      "quotes": "I never dreamed about success. I worked for it.",
      "author": "Estée Lauder",
      "category": "success",
      "color": Colors.amberAccent
    },
    {
      "quotes":
          "Success is getting what you want, happiness is wanting what you get.",
      "author": "W. P. Kinsella",
      "category": "success",
      "color": Colors.pink
    },
    {
      "quotes": "Don’t let yesterday take up too much of today.",
      "author": "Will Rogers",
      "category": "success",
      "color": Colors.blue
    },
    {
      "quotes": "I'm single because I was born that way.",
      "author": "Mae West",
      "category": "Single",
      "color": Colors.yellow
    },
    {
      "quotes":
          "Being single is pretty good. It's a nice sense of irresponsibility.",
      "author": "Michael Douglas",
      "category": "Single",
      "color": Colors.pink
    },
    {
      "quotes": "I don't like to be labeled as lonely just because I am alone.",
      "author": "Delta Burke",
      "category": "Single",
      "color": Colors.blue
    },
    {
      "quotes": "I'm dating a woman now who, evidently, is unaware of it.",
      "author": "Garry Shandling",
      "category": "Single",
      "color": Colors.deepOrange
    },
    {
      "quotes": "Marriage is the only adventure open to the cowardly.",
      "author": " Voltaire",
      "category": "Single",
      "color": Colors.green
    },
    {
      "quotes": "I love being single. It's almost like being rich.",
      "author": "Sue Grafton",
      "category": "Single",
      "color": Colors.cyan
    },
    {
      "quotes": "You are the guy who'll decide where to go.",
      "author": "Dr. Seuss",
      "category": "Single",
      "color": Colors.cyanAccent
    },
    {
      "quotes":
          "I don't need anyone to rectify my existence. The most profound relationship we will ever have is the one with ourselves.",
      "author": "Shirley MacLaine",
      "category": "Single",
      "color": Colors.amberAccent
    },
    {
      "quotes":
          "By persistently remaining single a man converts himself into a permanent public temptation.",
      "author": " Oscar Wilde",
      "category": "Single",
      "color": Colors.pink
    },
    {
      "quotes": "I celebrate myself, and sing myself.",
      "author": "Walt Whitman",
      "category": "Single",
      "color": Colors.blue
    },
    {
      "quotes":
          "Life is full of misery, loneliness, and suffering, and it’s all over much too soon.",
      "author": "Woody Allen",
      "category": "Lonely",
      "color": Colors.yellow
    },
    {
      "quotes":
          "The most terrible poverty is loneliness and the feeling of being unloved.",
      "author": "Mother Teresa",
      "category": "Lonely",
      "color": Colors.pink
    },
    {
      "quotes":
          "For fear you will be alone, you do so many things that aren’t you at all.",
      "author": "Richard Brautigan",
      "category": "Lonely",
      "color": Colors.blue
    },
    {
      "quotes":
          "The greatest thing in the world is to know how to belong to oneself.",
      "author": "Michel de Montaigne",
      "category": "Lonely",
      "color": Colors.deepOrange
    },
    {
      "quotes": "All great and precious things are lonely.",
      "author": " John Steinbeck",
      "category": "Lonely",
      "color": Colors.green
    },
    {
      "quotes": "You’re not alone. I’m awake and I’ve been thinking of you.",
      "author": "Kygo",
      "category": "Lonely",
      "color": Colors.cyan
    },
    {
      "quotes": "Lonely, I’m so lonely, I have nobody to call my own.",
      "author": "Akon",
      "category": "Lonely",
      "color": Colors.cyanAccent
    },
    {
      "quotes":
          "I’m not the girl you’re taking home. I keep dancing on my own.",
      "author": "Robyn",
      "category": "Lonely",
      "color": Colors.amberAccent
    },
    {
      "quotes": "Can anybody hear me or am I talking to myself?",
      "author": "Simple Plan",
      "category": "Lonely",
      "color": Colors.pink
    },
    {
      "quotes": "Ah, look at all the lonely people.",
      "author": "The Beatles",
      "category": "Lonely",
      "color": Colors.blue
    },
    {
      "quotes":
          "If you look the right way, you can see that the whole world is a garden.",
      "author": "Frances Hodgson Burnett",
      "category": "Attitude",
      "color": Colors.yellow
    },
    {
      "quotes":
          "It makes a big difference in your life when you stay positive.",
      "author": "Ellen DeGeneres",
      "category": "Attitude",
      "color": Colors.pink
    },
    {
      "quotes":
          "A positive attitude is something everyone can work on, and everyone can learn how to employ it.",
      "author": "Captain Jack Sparrow",
      "category": "Attitude",
      "color": Colors.blue
    },
    {
      "quotes":
          "Optimism is the faith that leads to achievement; nothing can be done without hope.",
      "author": "Helen Keller",
      "category": "Attitude",
      "color": Colors.deepOrange
    },
    {
      "quotes":
          "When a happy person comes into the room, it is as if another candle has been lit.",
      "author": "Ralph Waldo Emerson",
      "category": "Attitude",
      "color": Colors.green
    },
    {
      "quotes": "Happiness depends upon ourselves.",
      "author": "Aristotle",
      "category": "Happiness",
      "color": Colors.cyan
    },
    {
      "quotes":
          "Even if happiness forgets you a little bit, never completely forget about it.",
      "author": "aques Prevert",
      "category": "Happiness",
      "color": Colors.cyanAccent
    },
    {
      "quotes":
          "One of the secrets of a happy life is continuous small treats.",
      "author": "Iris Murdoch",
      "category": "Happiness",
      "color": Colors.amberAccent
    },
    {
      "quotes": "The only joy in the world is to begin",
      "author": "Cesare Pavese",
      "category": "Happiness",
      "color": Colors.pink
    },
    {
      "quotes":
          "It is only possible to live happily ever after on a daily basis.",
      "author": "Margaret Bonanno",
      "category": "Happiness",
      "color": Colors.blue
    },
    {
      "quotes": "Life's under no obligation to give us what we expect.",
      "author": "Margaret Mitchell",
      "category": "Sad",
      "color": Colors.yellow
    },
    {
      "quotes":
          "Things change. And friends leave. And life doesn't stop for anybody.",
      "author": "Stephen Chbosky",
      "category": "Sad",
      "color": Colors.pink
    },
    {
      "quotes":
          "Life is a moderately good play with a badly written third act.",
      "author": "Truman Capote",
      "category": "Sad",
      "color": Colors.blue
    },
    {
      "quotes":
          "The excursion is the same when you go looking for your sorrow as when you go looking for your joy.",
      "author": "Eudora Welty",
      "category": "Sad",
      "color": Colors.deepOrange
    },
    {
      "quotes":
          "I wish I could go back to the day I met you and just walk away.",
      "author": "Unknown ",
      "category": "Sad",
      "color": Colors.green
    },
    {
      "quotes":
          "There is no sunrise so beautiful that it is worth waking me up to see it.",
      "author": "Mindy Kaling",
      "category": "Funny",
      "color": Colors.cyan
    },
    {
      "quotes":
          "Life is short. Drive fast and leave a sexy corpse. That's one of my mottos.",
      "author": "Stanley Hudson, The Office",
      "category": "Funny",
      "color": Colors.cyanAccent
    },
    {
      "quotes": "I always cook with wine. Sometimes I even add it to the food.",
      "author": "W.C. Fields",
      "category": "Funny",
      "color": Colors.amberAccent
    },
    {
      "quotes":
          "Do not take life too seriously. You will never get out of it alive.",
      "author": "Elbert Hubbard",
      "category": "Funny",
      "color": Colors.pink
    },
    {
      "quotes": "I generally avoid temptation unless I can't resist it.",
      "author": "Mae West",
      "category": "Funny",
      "color": Colors.blue
    },
    {
      "quotes": "Life is beautiful and so are you.",
      "author": "Debasish Mridha",
      "category": "Beautiful",
      "color": Colors.cyan
    },
    {
      "quotes": "The purpose of our lives is to be happy.",
      "author": "Dalai Lama",
      "category": "Beautiful",
      "color": Colors.cyanAccent
    },
    {
      "quotes":
          "Once you become accustomed to life you will see its full meaning and its incredible beauty.",
      "author": "Jon Krakauer",
      "category": "Beautiful",
      "color": Colors.amberAccent
    },
    {
      "quotes":
          "Life is really simple, but we insist on making it complicated.",
      "author": "Confucius",
      "category": "Beautiful",
      "color": Colors.pink
    },
    {
      "quotes":
          "Life can only be understood backward, but it must be lived forwards",
      "author": "Soren Kierkegaard",
      "category": "Beautiful",
      "color": Colors.blue
    },
    {
      "quotes": "A rose by any other name would smell as sweet.",
      "author": "William Shakespeare",
      "category": "Best",
      "color": Colors.cyan
    },
    {
      "quotes": "All that glitters is not gold.",
      "author": "William Shakespeare",
      "category": "Best",
      "color": Colors.cyanAccent
    },
    {
      "quotes":
          "Ask not what your country can do for you; ask what you can do for your country.",
      "author": "John Kennedy",
      "category": "Best",
      "color": Colors.amberAccent
    },
    {
      "quotes": "Ask, and it shall be given you; seek, and you shall find.",
      "author": "the Bible",
      "category": "Best",
      "color": Colors.pink
    },
    {
      "quotes": "Eighty percent of success is showing up",
      "author": "Woody Allen",
      "category": "Best",
      "color": Colors.blue
    },
    {
      "quotes": "Bet on me? Bet I will.",
      "author": "Lizzo",
      "category": "Work",
      "color": Colors.cyan
    },
    {
      "quotes": "Before anything else, preparation is the key to success.",
      "author": "Alexander Graham Bell",
      "category": "Work",
      "color": Colors.cyanAccent
    },
    {
      "quotes": "Make each day your masterpiece",
      "author": "John Wooden",
      "category": "Work",
      "color": Colors.amberAccent
    },
    {
      "quotes": "We will fail when we fail to try.",
      "author": "Rosa Parks",
      "category": "Work",
      "color": Colors.pink
    },
    {
      "quotes": "Don’t count the days, make the days count.",
      "author": "Muhammad Ali",
      "category": "Work",
      "color": Colors.blue
    },
    {
      "quotes": "The best thing to hold onto in life is each other.",
      "author": "Audrey Hepburn",
      "category": "Romantic",
      "color": Colors.cyan
    },
    {
      "quotes": "I need you like a heart needs a beat",
      "author": "Unknown",
      "category": "Romantic",
      "color": Colors.cyanAccent
    },
    {
      "quotes":
          "I am who I am because of you. You are every reason, every hope, and every dream I’ve ever had.",
      "author": "The Notebook",
      "category": "Romantic",
      "color": Colors.amberAccent
    },
    {
      "quotes":
          "If I had a flower for every time I thought of you... I could walk through my garden forever.",
      "author": "Alfred Tennyson",
      "category": "Romantic",
      "color": Colors.pink
    },
    {
      "quotes": "You’re the closest to heaven, that I’ll ever be.",
      "author": "Goo Goo Dolls",
      "category": "Romantic",
      "color": Colors.blue
    },
    {
      "quotes":
          "Loved you yesterday, love you still, always have, always will.",
      "author": "Elaine Davis",
      "category": "Love",
      "color": Colors.cyan
    },
    {
      "quotes": "I need you like a heart needs a beat.",
      "author": "One Republic",
      "category": "Love",
      "color": Colors.cyanAccent
    },
    {
      "quotes": "If I know what love is, it is because of you.",
      "author": " Hermann Hesse",
      "category": "Love",
      "color": Colors.amberAccent
    },
    {
      "quotes":
          "I swear I couldn’t love you more than I do right now, and yet I know I will tomorrow.",
      "author": "Leo Christopher",
      "category": "Love",
      "color": Colors.pink
    },
    {
      "quotes":
          "A man is already halfway in love with any woman who listens to him.",
      "author": "Brendan Francis",
      "category": "Love",
      "color": Colors.blue
    },
    {
      "quotes": "Friends are the family we choose.",
      "author": "Jennifer Aniston",
      "category": "Thinking",
      "color": Colors.cyan
    },
    {
      "quotes": "My purpose: to lift your spirit and to motivate you.",
      "author": "Mavis Staples",
      "category": "Thinking",
      "color": Colors.cyanAccent
    },
    {
      "quotes":
          "Kindness is one thing you can’t give away. It always comes back.",
      "author": "George Skolsky",
      "category": "Thinking",
      "color": Colors.amberAccent
    },
    {
      "quotes": "Try to be a rainbow in someone else’s cloud.",
      "author": "Maya Angelou",
      "category": "Thinking",
      "color": Colors.pink
    },
    {
      "quotes":
          "Sometimes, when things are falling apart, they may actually be falling into place",
      "author": " Unknown",
      "category": "Thinking",
      "color": Colors.blue
    },
  ];
  List<CategoryModel> categorList = [
    CategoryModel(name: "motivation", image: "assets/image/motivation.png", color: Colors.yellow),
    CategoryModel(name: "Single", image: "assets/image/single.png", color: Colors.pink),
    CategoryModel(name: "Lonely", image: "assets/image/lonely.png", color: Colors.blue),
    CategoryModel(name: "Attitude", image: "assets/image/attitude.png", color: Colors.deepOrange),
    CategoryModel(name: "Happiness", image: "assets/image/happiness.png", color: Colors.green),
    CategoryModel(name: "Sad", image: "assets/image/sad.png", color: Colors.cyan),
    CategoryModel(name: "Funny", image: "assets/image/funny.png", color: Colors.cyanAccent),
    CategoryModel(name: "Beautiful", image: "assets/image/beautiful.png", color: Colors.amberAccent),
    CategoryModel(name: "Best", image: "assets/image/best.png", color: Colors.pink),
    CategoryModel(name: "Work", image: "assets/image/work.png", color: Colors.blue),
    CategoryModel(name: "Romantic", image: "assets/image/romantic.png", color: Colors.deepOrange),
    CategoryModel(name: "Love", image: "assets/image/love.png", color: Colors.green),
    CategoryModel(name: "success", image: "assets/image/success.png", color: Colors.cyan),
    CategoryModel(name: "Thinking", image: "assets/image/thinking.png", color: Colors.cyanAccent),
  ];
  List<Color> colorList =[
    Colors.white,
    Colors.red,
    Colors.black45,
    Colors.pink,
    Colors.yellow,
    Colors.cyanAccent,
    Colors.blueAccent,
    Colors.purpleAccent,
    Colors.green,
  ];

  List<QuotesModel> modelList = [];

  String? catName;
}
