import 'dart:ui';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 30.0, left: 10.0),
      color: Colors.deepOrangeAccent,
      child: Column(children: <Widget> [
        Row(children: <Widget>[
          Expanded(child: Text(
            "Margherita",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 30.0,
                decoration: TextDecoration.none,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.normal
            ),
          ),),
          Expanded(child: Text(
            "Tomato, Mozzarella, Basil",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 30.0,
                decoration: TextDecoration.none,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.normal
            ),
          ),),
        ],),
        Row(children: <Widget>[
          Expanded(child: Text(
            "Marinara",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 30.0,
                decoration: TextDecoration.none,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.normal
            ),
          ),),
          Expanded(child: Text(
            "Tomato, Garlic",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 30.0,
                decoration: TextDecoration.none,
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.normal
            ),
          ),),
        ],),
        PizzaImageWidget(),
      ],)
    ));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAssert = AssetImage('images/clip-art-pizza-1.jpg');
    Image image = Image(image: pizzaAssert, width: 400.0, height: 400.0,);
    return Container(child: image,);
  }
}