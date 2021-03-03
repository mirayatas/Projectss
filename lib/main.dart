import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Deneme());
}

class Deneme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TurkBayragi(g: 100),
    );
  }
}

class TurkBayragi extends StatelessWidget {
  final double g;
  TurkBayragi({this.g});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: g,
            width: g * 1.5,
            color: Colors.red,
          ), //Bayrak tabanı
          Positioned(
            left: 0.25 * g,
            top: 0.25 * g,
            child: Container(
              width: 0.5 * g,
              height: 0.5 * g,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ), //Dış ay
          Positioned(
              left: 0.3625 * g,
              top: 0.3 * g,
              child: Container(
                width: 0.4 * g,
                height: 0.4 * g,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              )), //İç Ay
          Positioned(
            left: 0.7 * g,
            top: 0.375 * g,
            child: Icon(
              Icons.star,
              color: Colors.white,
              size: g * 0.25,
            ),
          ) //Yıldız
        ],
      ),
    );
    ;
  }
}
