import 'dart:async';
import 'package:flutter/material.dart';
import 'package:anok_book/introScreen.dart';

void main()=>runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.deepPurple,
  accentColor: Colors.yellowAccent),
  debugShowCheckedModeBanner: false,
  home: Splash(),
));


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=>
      Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (context)=>new IntroScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/splash3.png")
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              
              CircularProgressIndicator(
               valueColor: new AlwaysStoppedAnimation(Colors.deepPurple)
              ),
              Padding(
                padding:EdgeInsets.only(bottom:20.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
