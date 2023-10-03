import 'package:all_quotes/Model/QuotesModel.dart';
import 'package:flutter/material.dart';

import '../Model/CategoryModel.dart';

class Global {

  static Global g1=Global();

  List<Map> quotesList=[
    {"quotes":"We cannot solve problems with the kind of thinking we employed when we came up with them.","author":"Albert Einstein","category":"success"},
    {"quotes":"Learn as if you will live forever, live like you will die tomorrow.","author":"Mahatma Gandhi","category":"success"},
    {"quotes":"Either you run the day or the day runs you.","author":"Jim Rohn","category":"success"},
    {"quotes":"Success is not final; failure is not fatal: It is the courage to continue that counts.","author":"Winston S. Churchill","category":"success"},
    {"quotes":"It is better to fail in originality than to succeed in imitation.","author":" Herman Melville","category":"success"},
    {"quotes":"The road to success and the road to failure are almost exactly the same.","author":"Colin R. Davis","category":"success"},
    {"quotes":"Success usually comes to those who are too busy looking for it.","author":"Henry David Thoreau","category":"success"},
    {"quotes":"I never dreamed about success. I worked for it.","author":"Estée Lauder","category":"success"},
    {"quotes":"Success is getting what you want, happiness is wanting what you get.","author":"W. P. Kinsella","category":"success"},
    {"quotes":"Don’t let yesterday take up too much of today.","author":"Will Rogers","category":"success"},
  ];
  List<CategoryModel> categorList=[
    CategoryModel(name:"Motivaion",image: "assets/image/motivation.png",color: Colors.yellow),
    CategoryModel(name: "Single", image: "assets/image/single.png", color: Colors.pink),
    CategoryModel(name: "Lonely", image: "assets/image/lonely.png", color: Colors.blue),
    CategoryModel(name: "Attitude", image: "assets/image/attitude.png", color: Colors.deepOrange),
    CategoryModel(name: "Happiness", image: "assets/image/happiness.png", color: Colors.green),
    CategoryModel(name: "Sad", image: "assets/image/sad.png", color: Colors.cyan),
    CategoryModel(name: "Funny", image: "assets/image/funny.png", color: Colors.cyanAccent),
    CategoryModel(name: "Beautiful", image: "assets/image/beautiful.png", color: Colors.amberAccent),
    CategoryModel(name: "Best", image: "assets/image/best.png", color: Colors.pink),
    CategoryModel(name: "Work", image: "assets/image/work.png", color: Colors.blue),
    CategoryModel(name: "Romentic", image: "assets/image/romentic.png", color: Colors.deepOrange),
    CategoryModel(name: "Love", image: "assets/image/love.png", color: Colors.green),
    CategoryModel(name: "success", image: "assets/image/success.png", color: Colors.cyan),
    CategoryModel(name: "Thinking", image: "assets/image/Thinking.png", color: Colors.cyanAccent),
  ];

  List<QuotesModel> modelList=[];

}