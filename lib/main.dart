import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'Home.dart';

/*void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}*/


void main() {
  
  Firestore.instance
    .collection("Usuário")
    .document("Pontuação")
    .setData({"Sol": "85", "Lua": "93"});

    runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}