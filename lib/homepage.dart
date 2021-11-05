import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.green,
        height: 150.0,
        width: 350.0,
        margin: EdgeInsets.only(right: 30.0, bottom: 400.0, left: 30.0),
        child: Text("Application",
        style: TextStyle(
          decoration: TextDecoration.none,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.black

        ),
        ),
      ),
    );
  }
}
