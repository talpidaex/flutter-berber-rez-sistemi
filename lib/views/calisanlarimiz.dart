import 'package:barber_app/views/randevu.dart';
import 'package:flutter/material.dart';

class Calisanlarimiz extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Calisanlarimiz> {
  var calisanlar = [
    {
      "name": "Oguzhan",
      "picture": "assets/images/logo.jpg",
    },
    {"name": "Ali Ayhan", "picture": "assets/images/logo.jpg"},
    {"name": "Test Ayhan", "picture": "assets/images/logo.jpg"},
    {"name": "Ali ", "picture": "assets/images/logo.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: calisanlar.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleMethod(
            name: calisanlar[index]['name'],
            picture: calisanlar[index]['picture'],
          );
        });
  }
}

class SingleMethod extends StatelessWidget {
  final String name;
  final String picture;

  SingleMethod({this.name, this.picture});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: name,
        child: Material(
          child: InkWell(
            onTap: () => (Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) => Randevu()))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading:
                      Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              child: Image.asset(
                picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
