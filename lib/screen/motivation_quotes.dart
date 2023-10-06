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
    List<QuotesModel> l1 =
        ModalRoute.of(context)!.settings.arguments as List<QuotesModel>;

    double h = MediaQuery.of(context).size.height * 0.30;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${Global.g1.catName}"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: l1.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                QuotesModel model = l1[index];
                Navigator.pushNamed(context, 'quotesedit', arguments: model);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: h,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: l1[index].color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                              child: Text(
                            "${l1[index].quotes}",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Concert',
                                 fontSize: 19),
                          )),
                          Expanded(
                              child: Text("- ${l1[index].author}",
                                  style: TextStyle(fontFamily: 'Concert',fontStyle: FontStyle.italic,fontSize: 16))),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.download),
                        Icon(Icons.image),
                        Icon(Icons.color_lens),
                        Icon(Icons.copy),
                        Icon(Icons.share),
                      ],
                    )
                  ],
                ),
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
