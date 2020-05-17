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
        OrderButton(),
      ],)
    ));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAssert = AssetImage('images/clip-art-pizza-1.jpg');
    Image image = Image(image: pizzaAssert, width: 300.0, height: 300.0,);
    return Container(child: image,);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      child: RaisedButton(
        child: Text("Order Your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      }
    );
  }
}