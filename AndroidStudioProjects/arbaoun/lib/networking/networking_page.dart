import 'package:arbaoun/models/hadith.dart';
import 'package:arbaoun/networking/networking_page_content.dart';
import 'package:flutter/material.dart';

class NetworkingPage extends StatelessWidget {
 String data;
 Hadith hadith;

 NetworkingPage(this.data, this.hadith);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NetworkingPageContent(data: data)
        ],
      ),
    );
  }
}
