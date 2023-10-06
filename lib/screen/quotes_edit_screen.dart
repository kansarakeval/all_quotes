import 'package:all_quotes/Model/QuotesModel.dart';
import 'package:flutter/material.dart';

class QuotesEditScreen extends StatefulWidget {
  const QuotesEditScreen({super.key});

  @override
  State<QuotesEditScreen> createState() => _QuotesEditScreenState();
}

class _QuotesEditScreenState extends State<QuotesEditScreen> {
  @override
  Widget build(BuildContext context) {
    QuotesModel model =
        ModalRoute.of(context)!.settings.arguments as QuotesModel;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pinkAccent,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${model.quotes}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "- ${model.author}",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              )),
          Spacer(),
          Container(
            height: MediaQuery.of(context).size.height*0.10,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.download_for_offline,color: Colors.white,),
                Icon(Icons.color_lens,color: Colors.white,),
                Icon(Icons.image,color: Colors.white,),
                Icon(Icons.copy,color: Colors.white,),
                Icon(Icons.favorite,color: Colors.red,),

              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.download_for_offline,color: Colors.black,),label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.color_lens,color: Colors.black,),label: 'color'),
      //     BottomNavigationBarItem(icon: Icon(Icons.image_rounded,color: Colors.black,),label: 'image'),
      //     BottomNavigationBarItem(icon: Icon(Icons.copy,color: Colors.black,),label: 'copy'),
      //     BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black,),label: 'like'),
      //   ],
        
      ),
    );
  }
}
