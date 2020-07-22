import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _object = ["Amarelo", "Azul", "Verde", "Vermelho"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;

  String _currentObject;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentObject = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String objct in _object) {
      items.add(new DropdownMenuItem(value: objct, child: new Text(objct)));
    }
    return items;
  }

  File _image;
  String _statusUpload = "";

  Future _recoverImage(bool cam) async {
    File selectedImage;
    if (cam) {
      selectedImage = await ImagePicker.pickImage(source: ImageSource.camera);
    }

    setState(() {
      _image = selectedImage;
    });
  }

  Future _uploadImage() async {
    //Reference file
    FirebaseStorage storage = FirebaseStorage.instance;
    StorageReference rootFolder = storage.ref();
    StorageReference file = rootFolder.child("image").child("imageTest.jpg");

    //Upload image
    StorageUploadTask task = file.putFile(_image);

    //track upload progress
    task.events.listen((StorageTaskEvent stotageEvent) {
      if (stotageEvent.type == StorageTaskEventType.progress) {
        setState(() {
          _statusUpload = "In progress.";
        });
      } else if (stotageEvent.type == StorageTaskEventType.success) {
        setState(() {
          _statusUpload = "Upload successful.";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3f3f95),
        appBar: AppBar(
          title: Text(
            "Mobile_GMS",
            style: TextStyle(fontSize: 20, color: Color(0xFF008d35)),
          ),
          backgroundColor: Color(0xFF3f3f95),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.photo_camera),
              color: Color(0xFF008d35),
              onPressed: () {
                _recoverImage(true);
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              color: Color(0xFF008d35),
              onPressed: () {},
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
              child: Column(children: <Widget>[
                //Image name alignment
                Container(
                  height: 50,
                  padding: EdgeInsets.only(
                    left: 75,
                    right: 75,
                  ),
                ),

                new DropdownButton(
                  value: _currentObject,
                  items: _dropDownMenuItems,
                  onChanged: changedDropDownItem,
                ),

                _image == null
                    ? Container(
                        child: Image.asset("images/logo.png"),
                      )
                    : Image.file(_image),

                _uploadImage == null
                    ? Container()
                    : Text(
                        _statusUpload,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF00b8ea),
                        ),
                      ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: null,
                      child: Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF008d35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {
                            _uploadImage();
                          },
                          child: Text(
                            'Next',
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
              ]),
            )));
  }

  void changedDropDownItem(String selectedObject) {
    setState(() {
      _currentObject = selectedObject;
    });
  }
}
