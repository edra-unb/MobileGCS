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
        backgroundColor: Color(0xFF3f3f95),
        appBar: AppBar(
          title: Text("Mobile GMS",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF008d35)
            ),
          ),
          backgroundColor: Color(0xFF3f3f95),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.videocam),
              color: Color(0xFF008d35),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              color: Color(0xFF008d35),
              onPressed: (){},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                            hintText: 'image name'
                            )
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("images/logo.jpg",
                    width: 320,
                    height: 320,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const MaterialButton(onPressed: null,
                    elevation: 20,
                    color: Colors.red,
                    child: Text('Back',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF008d35),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const MaterialButton(onPressed: null,
                        elevation: 20,
                        color: Colors.red,
                        child: Text('Next',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF008d35),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
           ]
          ),
        )
    );
  }
}
