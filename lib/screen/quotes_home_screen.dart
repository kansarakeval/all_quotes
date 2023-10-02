import 'package:flutter/material.dart';

class QuotesHomeScreen extends StatefulWidget {
  const QuotesHomeScreen({super.key});

  @override
  State<QuotesHomeScreen> createState() => _QuotesHomeScreenState();
}

class _QuotesHomeScreenState extends State<QuotesHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("All Best English Quotes",),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 120),
        children: [
          InkWell(onTap: () {
            Navigator.pushNamed(context, 'motivation');
          },
              child: quotesTile(hint: "Motivation", image: "assets/image/motivation.png", color: Colors.amberAccent)),
          quotesTile(hint: "Single", image: "assets/image/single.png", color: Colors.pink),
          quotesTile(hint: "Lonely", image: "assets/image/lonely.png", color: Colors.blue),
          quotesTile(hint: "Attitude", image: "assets/image/attitude.png", color: Colors.deepOrange),
          quotesTile(hint: "Happiness", image: "assets/image/happiness.png", color: Colors.green),
          quotesTile(hint: "Sad", image: "assets/image/sad.png", color: Colors.cyan),
          quotesTile(hint: "Funny", image: "assets/image/funny.png", color: Colors.cyanAccent),
          quotesTile(hint: "Beautiful", image: "assets/image/beautiful.png", color: Colors.amberAccent),
          quotesTile(hint: "Best", image: "assets/image/best.png", color: Colors.pink),
          quotesTile(hint: "Work", image: "assets/image/work.png", color: Colors.blue),
          quotesTile(hint: "Romentic", image: "assets/image/romentic.png", color: Colors.deepOrange),
          quotesTile(hint: "Love", image: "assets/image/love.png", color: Colors.green),
          quotesTile(hint: "Success", image: "assets/image/success.png", color: Colors.cyan),
          quotesTile(hint: "Thinking", image: "assets/image/Thinking.png", color: Colors.cyanAccent),
        ]
      ),

    ));
  }

  Container quotesTile({required String hint,required String image,required Color color}) {
    return Container(
        margin: EdgeInsets.all(10),
        width: 100,
        height: 100,
        color: color,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$hint",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                  child: Image.asset("$image",height: 60,width: 60,))
            ],
          ),
        ),
      );
  }
}
