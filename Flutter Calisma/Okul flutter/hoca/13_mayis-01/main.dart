import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Birinci uygulama",
      home: Scaffold(
          appBar: AppBar(
        title: Text("AppBar alanı"),
      ),
      body:Material(
        color: Colors.red,
        child: Center(
          child: Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color:Colors.white,
              fontSize:50.0),
          ),
        )),
      )),
    );
}



