import 'package:all_quotes/Model/QuotesModel.dart';
import 'package:all_quotes/util/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MotivationScreen extends StatefulWidget {
  const MotivationScreen({super.key});

  @override
  State<MotivationScreen> createState() => _MotivationScreenState();
}

class _MotivationScreenState extends State<MotivationScreen> {
  @override
  Widget build(BuildContext context) {


    List<QuotesModel> l1 = ModalRoute.of(context)!.settings.arguments as List<QuotesModel>;

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quotes"),
        ),
        body: ListView.builder(
          itemCount: l1.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              margin:EdgeInsets.all(10),
              color: Colors.red,
              child: Column(
                children: [
                  Text("${l1[index].quotes}"),
                  Text("${l1[index].author}"),
                  Text("${l1[index].category}"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

// Container quotesTile(double h, double w, QuotesModel q1) {
//   return Container(
//     padding: EdgeInsets.all(10),
//     margin: EdgeInsets.all(10),
//     height: h * 0.20,
//     width: w,
//     decoration: BoxDecoration(color: Colors.yellow.shade200,borderRadius: BorderRadius.circular(20)),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "${q1.quotes}",
//           style: TextStyle(fontSize: 20, color: Colors.black),
//         ),
//         Text(
//           "- ${q1.author}",
//           style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
//         ),
//       ],
//     ),
//   );
// }
}
