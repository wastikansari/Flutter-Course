import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 20.0,top: 55.0, right: 20.0),
          alignment: Alignment.center,
          color: Colors.amberAccent,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Raju Rastogi",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Roboto',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Adress",
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                    ),
                  ),

                  Expanded(
                    child: Text(
                      "Kanpur",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Roboto',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
