import 'package:flutter/material.dart';

//Tween animations
//physics based  // bound

class HomePageAnim extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<HomePageAnim> with SingleTickerProviderStateMixin {
  // Animation<double> animation;
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3500));
    animation = CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn);
    //Tween<double>(begin: 0.0, end: 1.0).animate(animationController);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
       Navigator.pushNamed(context, "/homePage");
      } else if (status == AnimationStatus.dismissed) {
         
      }
    });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimatedLogo(
      animation: animation,
    ));
  }
}

class AnimatedLogo extends AnimatedWidget {
  final Tween<double> _sizeAnim = Tween<double>(begin: 0.0, end: 1.0);

  AnimatedLogo({Key key, Animation animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable;
    return Transform.scale(
        scale: _sizeAnim.evaluate(animation),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
              image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage("assets/images/logo.jpg"))),
        ));
  }
}
