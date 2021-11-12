import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: ListView(
        reverse: false,
        scrollDirection: Axis.vertical,
        children: [
          Text("1"),
          Text("2"),
          Text("3"),
          Text("4"),
          Container(
            color: Colors.blue,
            height: 60,
          ),
          Text("5"),
          Text("6"),
          Text("7"),
          Text("8"),
          Container(
            color: Colors.red,
            height: 20,
          ),
          Text("9"),
          Text("10"),
          Text("11"),
          Text("12"),
          Text("13"),
          Text("14"),
          Text("15"),
          Text("16"),
          Text("17"),
          Text("18"),
          Text("19"),
          Text("20"),
        ],
      ),
    ),
  );
}
