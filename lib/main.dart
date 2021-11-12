import 'package:flutter/material.dart';

import 'SI_Calcutater.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculater",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent

      ),
      home: SICalculater(),

    )
  );
}