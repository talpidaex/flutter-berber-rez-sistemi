import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Hizmetler(
            imagelocation: "assets/images/img0.jpg",
             imagecaption: "Saç Kesimi",
          ),
           Hizmetler(
            imagelocation: "assets/images/img0.jpg",
             imagecaption: "Sakal Kesimi",
          ),
           Hizmetler(
            imagelocation: "assets/images/img0.jpg",
             imagecaption: "Saç Boyama",
          ),
           Hizmetler(
            imagelocation: "assets/images/img0.jpg",
             imagecaption: "Fön",
          ),
          Hizmetler(
            imagelocation: "assets/images/img0.jpg",
             imagecaption: "Manikür&Pedikür",
          ),
          Hizmetler(
            imagelocation: "assets/images/img0.jpg",
             imagecaption: "Cilt bakımı",
          ),
          
        ],
      ),
    );
  }
}

class Hizmetler extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;

  Hizmetler({this.imagelocation, this.imagecaption});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            height: 50.0,
            child: ListTile(
              title: Image.asset(imagelocation),
              subtitle: Container(
                padding: EdgeInsets.all(5.0),
                alignment: Alignment.topCenter,
                child: Text(imagecaption),
              ),
            ),
          ),
        ));
  }
}
