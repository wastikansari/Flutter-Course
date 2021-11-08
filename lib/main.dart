import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'TextInput',
    home: FavoriteFood(),
  ));
}

class FavoriteFood extends StatefulWidget {
  @override
  _FavoriteFoodState createState() => _FavoriteFoodState();
}

class _FavoriteFoodState extends State<FavoriteFood> {
  String FoodName = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Using Stateful Input'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (String userInput) {
                  setState(() {
                    FoodName = userInput;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Your Favorite Foods is $FoodName",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
