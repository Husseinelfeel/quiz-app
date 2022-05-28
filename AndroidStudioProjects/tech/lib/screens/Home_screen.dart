import 'package:flutter/material.dart';
import 'package:tech/widgets/home_body.dart';
import '../constants.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children:const [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/hussein.jpg'),
                ),
                accountName: Text(' Hussein elfeel'),
                accountEmail: Text('husseinshabban12@gmail.com')),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              leading: Icon(Icons.home, size: 35),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Help',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              leading: Icon(Icons.help, size: 35),
            ),
            Divider(),
            ListTile(
              title: Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              leading: Icon(Icons.help_center, size: 35),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              leading: Icon(Icons.exit_to_app, size: 35),
            ),
          ],
        ),
      ),
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }
}

homeAppBar() {
  return AppBar(
    actions: [
      IconButton(onPressed: () {

      }, icon:Icon( Icons.add_shopping_cart)),
    ],
    backgroundColor: kPrimaryColor,
    elevation: 0.0,
    title:const Text(
      'مرحبا بكم في متجر الالكترونيات ',

      style:TextStyle(fontSize: 18),
    ),
    centerTitle: false,
  );
}
