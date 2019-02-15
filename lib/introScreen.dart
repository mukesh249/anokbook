
import 'package:anok_book/Preparing.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
// import 'package:anok_book/untils/mynavigato.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
   List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        // title: "ERASER",
        // description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        // pathImage: "images/photo_eraser.png",
        // backgroundColor: Color(0xfff5a623),
        backgroundImage: "assets/images/pose1.png"
      ),
    );
    slides.add(
      new Slide(
        backgroundImage: "assets/images/pose2.png"
        
      ),
    );
    slides.add(
      new Slide(
        backgroundImage: "assets/images/pose3.png"
      ),
    );
    slides.add(
      new Slide(
       backgroundImage: "assets/images/pose4.png"
      )
    );
    slides.add(
      new Slide(
       backgroundImage: "assets/images/pose5.png"
      )
    );
    slides.add(
      new Slide(
       backgroundImage: "assets/images/pose6.png"
      )
    );
  }

  void onDonePress() {
  
    Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>new Preparing()));
  }

  void onSkipPress() {
      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>new Preparing()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
         
          child:new IntroSlider(
            slides: this.slides,
            onDonePress: this.onDonePress,
            onSkipPress: this.onSkipPress,
          ),
          
        )
      ],
  
    );
  }
}