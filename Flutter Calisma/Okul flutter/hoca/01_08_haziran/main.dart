import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/diger_sayfa.dart';

void main() {
  runApp(new MaterialApp(
    home: AnaSayfa(),
  ));
}

class AnaSayfa extends StatefulWidget {
  AnaSayfa({Key key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    Widget slider = Container(
      //color: Colors.blue,
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        autoplay: true,
        autoplayDuration: Duration(seconds: 2),
        animationCurve: Curves.fastOutSlowIn,
        dotColor: Colors.red,
        dotPosition: DotPosition.bottomCenter,
        dotSize: 4,
        dotVerticalPadding: 0,
        images: [
          NetworkImage('https://picsum.photos/id/237/400/200'),
          NetworkImage('https://picsum.photos/id/1000/400/200'),
          NetworkImage('https://picsum.photos/id/1001/400/200'),
          NetworkImage('https://picsum.photos/id/1002/400/200')
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 60,
        shadowColor: Colors.red,
        title: Text('1 Haziran Dersi'),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                print("Butonu tıklandı");
              })
        ],
      ),
      body: ListView(
        children: [slider, Text("Kadir")],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: Text("Kadir ABA"),
              accountEmail: Text("kadiraba@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.person),
              ),
              //Image.network("https://picsum.photos/300/200"),
            ),
            ListTile(
              title: Text("Ana Sayfa"),
              leading: Icon(Icons.home),
              onTap: () {
                print("Ana sayfa linkine tıklandı");
              },
            ),
            ListTile(
              title: Text(
                "Hesabım",
                style: TextStyle(
                    color: Colors.lightBlue,
                    backgroundColor: Colors.yellow,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.person),
              onLongPress: () {
                print("Hesabım tuşuna uzun basıldı");
              },
            ),
            ListTile(
              title: Text("İletişim"),
              leading: Icon(Icons.phone_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DigerSayfa()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Oturumu Kapat"),
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
