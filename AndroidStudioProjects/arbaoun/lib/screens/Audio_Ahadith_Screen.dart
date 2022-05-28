
import 'package:arbaoun/screens/Home_screen.dart';
import 'package:arbaoun/utilies/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../db/mydatabase.dart';
import '../models/hadith.dart';
import '../utilies/colors.dart';
class AudioAhadithScreen extends StatefulWidget {
  @override
  State<AudioAhadithScreen> createState() => _AudioAhadithScreenState();
}

class _AudioAhadithScreenState extends State<AudioAhadithScreen> {
  @override

  Widget ayah(String key, name) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset("assets/images/Path 40.png"),
        Image.asset("assets/images/Path 41.png"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(key,style: TextStyle(fontSize: 16,color: colorApp.yellow1),),
            Text(name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: colorApp.yellow1),textScaleFactor: .5,),
          ],
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Expanded(

            child:Stack (
              children: [
                Image.asset('assets/images/background.png',width: double.infinity,fit: BoxFit.cover,),
                Column(
                  children: [
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(""),
                        Image.asset('assets/images/Group 10.png'),
                        GestureDetector ( onTap:(){ Navigator.of(context).pop(context);} ,child: Image.asset('assets/images/arrow-right.png')),
                      ],
                    ),
                    Column(
//mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextApp.topHomeScreen,
                        TextApp.headerHomeScreen,

                      ],
                    ),
                  ],
                ),
              ],
            ),flex: 1,),

          Expanded(child:  Stack  (
            children: [
              Image.asset('assets/images/background.png',width: double.infinity,fit: BoxFit.cover,),
              FutureBuilder(

//we call the method, which is in the folder db file database.dart
                  future: Mydata.getAlldata(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          Hadith item = snapshot.data[index];
//delete one register for id
                          return ayah(item.key, item.nameHadith);
                        },
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          mainAxisSpacing: 20,
                          childAspectRatio: 3/2,),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            ],
          ),flex: 2,),
        ],
      ),



    );
  }
}
