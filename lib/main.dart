import 'package:flutter/material.dart';
import 'views/deneme.dart';
import 'views/homepageAnim.dart';
import 'views/homePage.dart';

void main() => runApp(new MaterialApp(

        initialRoute: "/",
        routes: {
            "/" : (context) =>  HomePageAnim (), //Deneme(title: "Flutter Routes",)
            "/deneme" : (context) => Deneme(title: "Deneme",),
            "/homePage" : (context) => HomePage(),
        },
));
