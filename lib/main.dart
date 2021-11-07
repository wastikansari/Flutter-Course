import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI",
    home: Scaffold(
      appBar: AppBar(
        title: Text('Long List'),
      ),
      body:  GetListView(),
      floatingActionButton: FloatingActionButton.extended(
       elevation: 20.0,

          label: const Text("Add"),
          icon: const Icon(Icons.add),
          tooltip: 'Add One More Item',
          onPressed: () {
            debugPrint('Tapp');
          }),
    ),
  ));
}

List<String> GetListElement() {
  var items = List<String>.generate(100, (Counter) => "Item $Counter");
  return items;
}

Widget GetListView() {
  var listItem = GetListElement();

  var listView = ListView.builder(
      itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.add_outlined),
      title: Text(listItem[index]),
      onTap: () {
      //  debugPrint('${listItem[index]} was tapped');
      SnackBarMessage(context,listItem[index]);
      },
    );
  });
  return listView;
}


// SnackBar to show a message in bottom

void SnackBarMessage(BuildContext context, String listItem) {

  var snackBar = SnackBar(
      content: Text("You just tapped $listItem"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: (){
        debugPrint('Performing dummy UNDO operation');
      },
    ),

  );
  Scaffold.of(context).showSnackBar(snackBar);
}