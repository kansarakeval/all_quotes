import 'package:all_quotes/Model/CategoryModel.dart';
import 'package:all_quotes/Model/QuotesModel.dart';
import 'package:all_quotes/util/global.dart';
import 'package:flutter/material.dart';

class QuotesHomeScreen extends StatefulWidget {
  const QuotesHomeScreen({super.key});

  @override
  State<QuotesHomeScreen> createState() => _QuotesHomeScreenState();
}

class _QuotesHomeScreenState extends State<QuotesHomeScreen> {
  @override
  void initState() {
    super.initState();
    Global.g1.quotesList.map((e) {
      QuotesModel q1 = QuotesModel.fromMap(e);
      Global.g1.modelList.add(q1);
    }).toList();

  }
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("All Best English Quotes",),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              isGrid=! isGrid;
            });

          }, icon: Icon(isGrid?Icons.list:Icons.grid_on_outlined))
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: isGrid ?GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 120),
        itemCount: Global.g1.categorList.length,
        itemBuilder: (context, index) {
          return quotesTile(Global.g1.categorList[index]);
        },
      ): ListView.builder(itemCount:Global.g1.categorList.length, itemBuilder:(context, index) {
        return quotesTile(Global.g1.categorList[index]);
      }, ),

    ));
  }

  Widget quotesTile(CategoryModel c1) {
    return InkWell(
      onTap: (){
        List<QuotesModel> l1 =[];
        Global.g1.catName=c1.name;
        for(var x in Global.g1.modelList)
          {
            if(x.category==c1.name)
              {
                l1.add(x);
              }

          }
        Navigator.pushNamed(context, 'motivation',arguments: l1);
      },
      child: Container(
          margin: EdgeInsets.all(5),
          width: 100,
          height: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: c1.color),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${c1.name}",style: TextStyle(fontFamily: 'Viga',fontWeight: FontWeight.bold,fontSize: 16),),
                Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                    child: Image.asset("${c1.image}",height: 50,width: 50,))
              ],
            ),
          ),
        ),
    );
  }
}
