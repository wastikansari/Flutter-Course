
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI",
    home: Scaffold(
      appBar: AppBar(
        title: Text('Long List'),
      ),
       body: GetListView()
    ),
  ));
}

List<String> GetListElement() {
  var items = List<String>.generate(100, (Counter) => "Item $Counter");
  return items;
}

Widget GetListView() {
  var listItem = GetListElement();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_forward_rounded),
      title: Text(listItem[index]),
      onTap: (){
        debugPrint('${listItem[index]} was tapped');
      },
    );
  }
  );
  return listView;
}
