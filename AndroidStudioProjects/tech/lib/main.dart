import 'package:flutter/material.dart';
import 'package:tech/screens/Home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech/screens/splash_screen.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.red,
        ),
        accentColor: kPrimaryColor,
      ),

//      localizationsDelegates: [
//        GlobalCupertinoLocalizations.delegate,
//        GlobalMaterialLocalizations.delegate,
//        GlobalWidgetsLocalizations.delegate,
//      ],
//      supportedLocales: [Locale("ar", "AE")],
//      locale: Locale("ar", "AE"),
      home: splashScreen(),
    );
  }
}
