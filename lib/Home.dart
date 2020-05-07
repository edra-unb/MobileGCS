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
          title: Text("Mobile_GMS",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF008d35)
            ),
          ),
          backgroundColor: Color(0xFF3f3f95),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.photo_camera),
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

        //App body
        body: Container(

          width: double.infinity,
          height: double.infinity,

          decoration: BoxDecoration(
            color: Color(0xFF3f3f95),
            border: Border.all(width: 3, color: Color(0xFF008d35)),
          ),

         child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          scrollDirection: Axis.vertical,

          child: Column(
            children: <Widget>[
              //Image name alignment
              Container(
                height: 50,
                padding: EdgeInsets.only(
                  left: 75,
                  right: 75,
                ),
                
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "image name"
                  ),
                )
              ),
              //Image alignment
              Container(
                height: 400,
                padding: EdgeInsets.all(15),

                child: Image.asset("images/logo.png"),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const MaterialButton(onPressed: null,
                    child: Text('Back',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF008d35),
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const MaterialButton(onPressed: null,
                        child: Text('Next',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF008d35),
                              fontWeight: FontWeight.bold,
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
        )
    );
  }
}