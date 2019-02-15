
import 'package:flutter/material.dart';

class Walkthrough extends StatefulWidget {
  final imageIcon;

  Walkthrough({
    this.imageIcon
    });

  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController  = AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    animation = Tween(begin: -250.0,end: 0.0).
    animate(CurvedAnimation(
      parent: animationController,curve: Curves.easeInOut
    ));
    animation.addListener(()=>setState((){}));
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        animationDuration: Duration(microseconds: 200),
        elevation: 3.0,
         child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[
             
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("${widget.imageIcon}")
                  )
                ),
              ),
         
            ],
          ),
      ),
    );
  }
}