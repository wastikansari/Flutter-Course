import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 20.0, top: 55.0, right: 20.0),
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
              UsingImage(),
              HomeBookButton(),
            ],
          )),
    );
  }
}

class UsingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('Assets/house.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 750,
      height: 400,
    );
  }
}

class HomeBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 250,
      child: RaisedButton(
        elevation: 6.0,
        color: Colors.white,
        child: Text(
          'Book Home',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'Regular',
          ),
        ),
        onPressed: () {
          BookMessage(context);
        },
      ),
    );
  }
}

void BookMessage (BuildContext context){

  var alertDialog = AlertDialog(
    elevation: 5.0,
    title: Text('Book Home Successfully'),
    content: Text('Enjoy your New HOME'),
  );

  showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;

  });
}