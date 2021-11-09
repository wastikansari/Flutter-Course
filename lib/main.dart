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
  var _FoodDeliveryCompany = ['Zomato', 'Swiggy', 'Dominos', 'Uber Eats'];
  var _currentItemSelected = "Dominos";


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
            DropdownButton<String>(
              items: _FoodDeliveryCompany.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                //your code execute, when a menu item is selected from drop down
                setState(() {
                  this._currentItemSelected = newValueSelected;
                });
              },
              value: _currentItemSelected,
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
