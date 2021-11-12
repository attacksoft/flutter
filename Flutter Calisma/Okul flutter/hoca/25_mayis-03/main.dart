import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: new AppBar(
        title: Text("Flutter Projesi"),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(icon: Icon(Icons.search), onPressed: null),
        ],
      ),
      body: Text("kadir"),
    );
  }
}
