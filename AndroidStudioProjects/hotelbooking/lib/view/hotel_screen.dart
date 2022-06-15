import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hotelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 0,
              bottom: 84,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(
                        'Hello, Dreamwalker',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 145,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.notifications_none,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage('images/huss.jpg'),
                            ), ],
                        ),
                      ),


                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const  Text(
                    "Let's find the best",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const  Text(
                    "hotel for you",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: SizedBox(
                      height: 315,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding:const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 4),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.search,
                                      //color: Colors.grey,
                                    ),
                                    hintText: 'Enter your destination',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                           const   SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          padding:const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 4),
                                          child:const TextField(
                                            decoration: InputDecoration(
                                              icon: Icon(
                                                Icons.calendar_today,
                                                // color: Colors.grey,
                                              ),
                                              hintText: 'Dates',
                                              border: InputBorder.none,
                                            ),
                                          ))),
                                  const   SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 4),
                                          child: const TextField(
                                            decoration: InputDecoration(
                                              icon: Icon(
                                                Icons.apps,
                                                // color: Colors.grey,
                                              ),
                                              hintText: "Rooms",
                                              border: InputBorder.none,
                                            ),
                                          ))),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding:const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 4),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.people_outline,
                                      ),
                                      hintText: "Guest",
                                      border: InputBorder.none,
                                    ),
                                  )),
                              const  SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: double.infinity,
                                padding:const EdgeInsets.symmetric(vertical: 20),
                                child: Center(
                                  child: Text(
                                    'search hotel'.toUpperCase(),
                                    style:const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.indigoAccent[100],
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:const [
                      Text(
                        "Top Searches Hotel",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text('See All'),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                const  SizedBox(
                    height: 2,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white30,
                          borderRadius: BorderRadius.circular(8),),
                            width: 240,

                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey[200],
                                      borderRadius: BorderRadius.circular(8),
                                      image:const DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2021/10/06/15/05/bedroom-6686061_960_720.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding:const EdgeInsets.symmetric(
                                                  horizontal: 6, vertical: 4),
                                              decoration: BoxDecoration(
                                                color: Colors.indigoAccent[100],
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child:const Center(
                                                child: Text(
                                                  "10%",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 18,
                                              foregroundColor:
                                                  Colors.indigoAccent[200],
                                              child:const Icon(
                                                Icons.favorite,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Carden Inn Times Square"),
                        SizedBox(
                        height: 8,
                        ),
                        Row(
                        children: [
                        Icon(
                        Icons.location_on,
                        color: Colors.blueGrey,
                        size: 16,
                        ),
                        SizedBox(
                        width: 8,
                        ),
                        Text(
                        "New York, NY(LAG)",
                        style: TextStyle(
                        color: Colors.blueGrey,
                        ),
                        ),
                        ],
                        )
                        ],
                        ),
                        )
                              ],
                            ),
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: 16,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 66,
                decoration: const BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children:const [
                        Icon(
                          CupertinoIcons.home,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children:const [
                        Icon(
                          CupertinoIcons.heart,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Favorites",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children:const [
                        Icon(Icons.notifications_none),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Notification",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          CupertinoIcons.bookmark,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Booking",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children:const [
                        Icon(
                          CupertinoIcons.person,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(fontSize: 12),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
