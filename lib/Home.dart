import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF363435),
      appBar: AppBar(
        title: Text("Mobile GMS",
          style: TextStyle(
              fontSize: 20,
              color: Color(0xFF00b8ea)
          ),
        ),
        backgroundColor: Color(0xFF363435),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Color(0xFF00b8ea),
            onPressed: (){},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF00b8ea),
            border: Border.all(width: 3, color: Color(0xFF363435)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "nome da imagem"
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Expanded(
                  child: Image.asset("image/logo.png",
                  //width: 200,
                  //height: 150,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BottomAppBar(
                  color: Color(0xFF363435),

                )
              ],
            )
          ],
        ),
      )
    );
  }
}
