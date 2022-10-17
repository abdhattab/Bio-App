import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bio_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Bio App'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [Colors.blue.shade800, Colors.red.shade400],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/people.png'),
            ),
            const SizedBox(height: 10),
            const Text(
              "Aballah Osama Alhattab",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 36),
            ),
            const SizedBox(height: 10),
            Text(
              'Flutter Programmer',
              style: GoogleFonts.actor(
                  color: Colors.white,
                  height: 0.5,
                  letterSpacing: 2,
                  fontSize: 18),
            ),
            // fontFamily: 'Yanone Kaffeesatz',
            // fontWeight: FontWeight.w500,

            const Divider(
              height: 40,
              color: Colors.white70,
              indent: 40,
              endIndent: 40,
              thickness: 3,
            ),
            BioCard(leadingIcon: Icons.face,
              title: 'Aballah Osama Al-Hattab',
              subTitle: 'Software Engineering',
              trailingIcon: Icons.security_rounded,
              onPressed: () {
                ShowSnackBar('Aballah Osama Al-Hattab');
              }
              ,),
            BioCard(leadingIcon:
                Icons.phone_iphone, title: 'Phone', subTitle:'+970-597-9807-74',trailingIcon: Icons.call,onPressed: (){
              ShowSnackBar('+970-597-9807-74');
            },),
            BioCard(leadingIcon:Icons.email,title: 'Email', subTitle: 'abdhattab@hotmail.com',
                trailingIcon:Icons.send_sharp,onPressed: (){
                ShowSnackBar('abdhattab@hotmail.com');
              },),
            const SizedBox(height: 70),

            Text(
              'Simple Bio App',
              style: GoogleFonts.actor(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  void ShowSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
