import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: Column(
        children: [
          Text("1"),
          Text("2"),
          Container(
            height: 50,
            width: 50,
            color: Colors.white,
          ),
          Text("13"),
          Text("21"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.indigo,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green[600],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green[400],
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green[800],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
