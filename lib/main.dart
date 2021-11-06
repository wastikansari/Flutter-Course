import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: " Exploring UI",
    home:Scaffold(
      appBar: AppBar(title: Text("Basic List View"),),
      body: GetListView(),
    ) ,
  )
  );
}

Widget GetListView (){

  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.person),
        title: Text("Person"),
        subtitle: Text("View"),
        trailing: Icon(Icons.wb_auto),
        onTap: (){
          debugPrint("tapp");

        },

      ),
      ListTile(
        leading: Icon(Icons.desktop_windows),
        title: Text("Laptop"),
        subtitle: Text("use"),
        trailing: Icon(Icons.wb_auto),

      ),
      ListTile(
        leading: Icon(Icons.add_call),
        title: Text("Call Me"),
        subtitle: Text("Information"),
        trailing: Icon(Icons.wb_auto),

      ),

      Text("Insert Element in List"),
      Container(color: Colors.greenAccent,height: 50.0,)


    ],
  );
  return listView;
}