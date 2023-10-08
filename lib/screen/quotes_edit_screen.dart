import 'package:all_quotes/Model/QuotesModel.dart';
import 'package:all_quotes/util/app_color.dart';
import 'package:all_quotes/util/app_image.dart';
import 'package:all_quotes/util/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuotesEditScreen extends StatefulWidget {
  const QuotesEditScreen({super.key});

  @override
  State<QuotesEditScreen> createState() => _QuotesEditScreenState();
}

class _QuotesEditScreenState extends State<QuotesEditScreen> {
  int colorbgindex = 1, colortextindex = 0, imgindex=0;
  TextAlign txtalign = TextAlign.center;
  bool bold = false;
  bool italic = false;

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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorbg[colorbgindex],
                  image: DecorationImage(image: AssetImage("assets/image/bgimg/${imageList[imgindex]}"),fit: BoxFit.cover)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${model.quotes}",
                      textAlign: txtalign,
                      style: TextStyle(
                        fontFamily: 'Domine',
                        fontSize: 25,
                        color: colorbg[colortextindex],
                        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                        fontStyle: italic ? FontStyle.italic : FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "- ${model.author}",
                          textAlign: txtalign,
                          style: TextStyle(
                            fontFamily: 'Domine',
                            fontSize: 20,
                            color: colorbg[colortextindex],
                            fontWeight:
                                bold ? FontWeight.bold : FontWeight.normal,
                            fontStyle:
                                italic ? FontStyle.italic : FontStyle.normal,
                          ),
                        )),
                  ],
                )),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.download_for_offline)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (colorbgindex < colorbg.length - 1) {
                                  colorbgindex++;
                                } else {
                                  colorbgindex = 0;
                                }
                              });
                            },
                            icon: Icon(Icons.color_lens)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.image)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (colortextindex < colorbg.length - 1) {
                                  colortextindex++;
                                } else {
                                  colortextindex = 0;
                                }
                              });
                            },
                            icon: Icon(Icons.format_color_text)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                Clipboard.setData(ClipboardData(
                                    text: "${model.quotes}" "- ${model.author}"));
                              });
                            },
                            icon: Icon(Icons.copy)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                bold = !bold;
                              });
                            },
                            icon: Icon(Icons.format_bold)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                italic = !italic;
                              });
                            },
                            icon: Icon(Icons.format_italic)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                txtalign = TextAlign.left;
                              });
                            }, icon: Icon(Icons.format_align_left)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                txtalign = TextAlign.center;
                              });
                            },
                            icon: Icon(Icons.format_align_center)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                txtalign = TextAlign.right;
                              });
                            }, icon: Icon(Icons.format_align_right)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: imageList.length,itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              imgindex=index;
                            });
                          },
                            child: Image.asset("assets/image/bgimg/${imageList[index]}",height: 50,width: 50,fit: BoxFit.cover)),
                      );
                    },),
                  )
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
