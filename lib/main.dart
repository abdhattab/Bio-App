
import 'package:bio_app/screens/home_screen.dart';
import 'package:bio_app/screens/lanch_screen.dart';
import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
        bodyText2: TextStyle(
          fontFamily: 'Yanone Kaffeesatz',
        ),
      )),
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),
      initialRoute: 'launch_screen',
      routes: {
        'home_screen':(context) => const HomeScreen(),
        'launch_screen':(context)=>const LanuchScreen(),

      },
    );
  }
}
