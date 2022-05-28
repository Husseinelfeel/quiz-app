import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilies/colors.dart';
import '../utilies/strings.dart';
import 'Ahadith_Screen.dart';
import 'Audio_Ahadith_Screen.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/background.png',
              width: double.infinity, fit: BoxFit.cover),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/Group 10.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextApp.topHomeScreen,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextApp.headerHomeScreen,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(onTap: (){ Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(ctx)=> AhadithScreen() ),);},
                      child: Card(
                        child: Container(
                            padding: EdgeInsets.all(8),
                            height: 117,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(10, 10),
                                  blurRadius: 40

                              ),
                            ],
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(
                                begin: AlignmentDirectional.topEnd,
                                end: AlignmentDirectional.bottomStart,
                                colors: [colorApp.green1, colorApp.green2],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset('assets/images/quran.png'),
                                TextApp.bookOneScreen,
                                Image.asset('assets/images/Group 11.png'),
                              ],
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),


                    InkWell(onTap: (){ Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(ctx)=> AudioAhadithScreen() ),);},
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          height: 117,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(10, 10),
                                blurRadius: 40

                            ),
                          ],
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                              begin: AlignmentDirectional.topEnd,
                              end: AlignmentDirectional.bottomStart,
                              colors: [colorApp.yellow1, colorApp.red2],
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/play.png'),
                              TextApp.bookTwoScreen,
                              Image.asset('assets/images/Group 11-1.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: 117,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(10, 10),
                              blurRadius: 40

                          ),
                        ],
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: AlignmentDirectional.topEnd,
                            end: AlignmentDirectional.bottomStart,
                            colors: [colorApp.red1, colorApp.red2],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/save-instagram.png'),
                            TextApp.bookThreeScreen,
                            Image.asset('assets/images/Group 11-2.png'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget myCard (Color color1,color2,String text,path1,path2,){
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20,top: 48),
    child: Container(

        height: 117,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(10, 10),
                  blurRadius: 40

              )
            ],
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(colors: [
              color1,
              color2,
            ],begin: AlignmentDirectional.topEnd,end: AlignmentDirectional.bottomStart

            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(path1),
            Text(text),
            Image.asset(path2)
          ],
        )
    ),
  );
}