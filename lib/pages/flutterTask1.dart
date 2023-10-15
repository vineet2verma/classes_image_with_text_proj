import 'package:flutter/material.dart';

class FlutterTask1 extends StatelessWidget {
  // const FlutterTask1({super.key});
  Color bgcolor =  Color.fromRGBO(177, 220, 239 ,1);   // #E6F0FA // rgb(230,240,250)
  Color bgcolor2 =  Colors.white54;
  final String text1 = "Strawberry Pavlova";
  final String text2 = "Pavlova is a meringue-based\ndessert named after the Russian\nballerine Anna Pavlova. Pavlova\nfeatues a crisp crust and\nsoft, light inside , topped with fruit\nand whipped cream.";
  final String text3 = "*** 170 Reviews";
  final String text4 = "Working";
  final imageAdd = "assets/image_piecake.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 700,
        height: 500,
        decoration: BoxDecoration(
          color: bgcolor2,
          border: Border.all(
              color: Colors.red,width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(1)
          ),
        ),
        child:
        Column(
          children: [
            Row(
              children: [
                SizedBox(height: 10,),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      // color:
                      border: Border.all(width: 2,
                        color: Color.fromRGBO(0,252,218,100),),
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      ),
                    ),

                    child: Column(
                      children: [
                        /// 1st
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8,top: 8),
                          child: Container(
                            height: 20,
                            width: 200,
                            color: bgcolor,
                            child: Text(text1,style: TextStyle(fontSize: 16),textAlign: TextAlign.center),
                          ),
                        ),
                        /// 2nd
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                            child: Container(
                              width: 200,
                              color: bgcolor,
                              child: Text(text2,style: TextStyle(fontSize: 12),textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        /// 3rd
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                          child: Container(
                            width: 200,
                            color: bgcolor,
                            child: Text(text3,style: TextStyle(fontSize: 12),textAlign: TextAlign.center),
                          ),
                        ),
                        /// 4th // last
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                          child: Container(
                            height: 80,
                            width: 200,
                            color: bgcolor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ///1
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Icon(Icons.save),
                                        Text("PREP"),
                                        Text("25 min"),
                                      ],
                                    ),
                                  ),
                                ),
                                ///2
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Icon(Icons.lock_clock),
                                        Text("COOK:"),
                                        Text("1 hr"),
                                      ],
                                    ),
                                  ),
                                ),
                                ///3
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        Icon(Icons.fastfood),
                                        Text("FEEDS:"),
                                        Text("4-6"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 60,),
                      ],
                    ),
                  ),
                ),
                /// For Images
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 470,
                      width: 200,
                      color: bgcolor,
                      child: Image.asset(imageAdd,fit: BoxFit.fill,),
                    ),
                  ),
                ),

              ],
            )
          ],
        ),

      ),
    );
  }
}
