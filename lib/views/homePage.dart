import 'package:barber_app/views/horizontal_listview.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'calisanlarimiz.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/shop1.jpg'),
          AssetImage('assets/images/shop2.jpg'),
          AssetImage('assets/images/shop3.jpg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 20.0, //yükseklik!
        title: new Text(
          "X SALOON",
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.orangeAccent[200],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("admin"),
              accountEmail: new Text("admin@admin.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.orangeAccent[100],
                  child: new Icon(
                    Icons.person,
                    color: Colors.black26,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.orangeAccent),
            ),
            InkWell(
              child: ListTile(
                title: Text(
                  "Üye girişi",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                leading: Icon(Icons.person_pin),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text(
                  "Üye Ol",
                ),
                leading: Icon(Icons.transit_enterexit),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Divider(
              height: 2.0,
            )
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          imageCarousel,
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text('Hizmetlerimiz'),
          ),
//Horizontal listview burada başlıyor.
          HorizontalList(),

          //Padding ayarlıyoruz.
          new Padding(
            padding: const EdgeInsets.all(5.0),
            child: new Text('Çalışan Arkadaşlarımız'),
          ),
          //Grid view tarafı!
          Container(
              height: 320.0,
              child: Calisanlarimiz(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Anasayfa")),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_cut), title: Text("Modeller")),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range), title: Text("Randevu Al"))
        ],
      ),
    );
  }
}
