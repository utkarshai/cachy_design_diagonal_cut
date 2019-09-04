import 'package:flutter/material.dart';
import 'package:diagonal/diagonal.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      title: "diagonal partition",
      home: DiagonalExamples(),
    ),
  );
}

class DiagonalExamples extends StatelessWidget {
  var ref = 0;
  var flame = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagonal Examples'),
      ),
      body: Stack(
        children: <Widget>[
          Image.network(
            "https://media1.giphy.com/media/eYXDv676WFGkE/giphy.webp?cid=790b76118dcd9c8ec12ee503eda3d8588dd03ff16729f454&rid=giphy.webp",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          _getBody(),
          Center(
              child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 300,
                      child: Column(children: <Widget>[
                        Row(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ClipOval(
                                  child: Material(
                                  color: Colors.transparent,
                                    child: InkWell(
                                      
                                      child: Image.network(
                                        "https://images.unsplash.com/photo-1558451571-ad296423ee8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                                        height: 120.0,
                                        width: 120.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    height: 120.0,
                                    width: 140.0,
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: new FloatingActionButton(
                                        child: Icon(Icons.edit),
                                        onPressed: () => {},
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(children: <Widget>[
                              Text(
                                "Utkarsh",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30.0),
                              ),
                              Text(
                                "$ref referred friend",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    decoration: TextDecoration.underline),
                              ),
                            ]),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 350,
                            child: new Align(
                              alignment: Alignment.centerLeft,
                              child: new Text(
                                "CLAIM Rs.100 CASH",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: 380.0,
                            child: Row(
                              children: <Widget>[
                                RaisedButton(
                                  onPressed: _abc,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.fire),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(
                                        "$flame Flames",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0),
                                      ),
                                    ],
                                  ),
                                    color: Colors.purple,
                                ),
                                SizedBox(width: 30.0),
                                RaisedButton(
                                  onPressed: _abc,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.plusSquare),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(
                                        "Refer Friend",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0),
                                      ),
                                    ],
                                  ),
                                  color: Colors.purple,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Column(
            children: <Widget>[
              Expanded(
                child: Container(),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                          leading: Icon(FontAwesomeIcons.soundcloud),
                          title: Text("Did you know?",
                              style: TextStyle(color: Colors.lightBlue)),
                          trailing: Icon(
                            Icons.arrow_right,
                            size: 50.0,
                          )),
                      ListTile(
                          leading: Icon(FontAwesomeIcons.portrait),
                          title: Text("My Profile",
                              style: TextStyle(color: Colors.lightBlue)),
                          trailing: Icon(
                            Icons.arrow_right,
                            size: 50.0,
                          )),
                      ListTile(
                          leading: Icon(FontAwesomeIcons.prescription),
                          title: Text("Preference",
                              style: TextStyle(color: Colors.lightBlue)),
                          trailing: Icon(
                            Icons.arrow_right,
                            size: 50.0,
                          )),
                      ListTile(
                          leading: Icon(FontAwesomeIcons.question),
                          title: Text("Support",
                              style: TextStyle(color: Colors.lightBlue)),
                          trailing: Icon(
                            Icons.arrow_right,
                            size: 50.0,
                          )),
                      ListTile(
                          leading: Icon(FontAwesomeIcons.microphoneAltSlash),
                          title: Text("Speak to the Ceo",
                              style: TextStyle(color: Colors.lightBlue)),
                          trailing: Icon(
                            Icons.arrow_right,
                            size: 50.0,
                          )),
                      ListTile(
                          leading: Icon(FontAwesomeIcons.trophy),
                          title: Text("Leaderboard",
                              style: TextStyle(color: Colors.lightBlue)),
                          trailing: Icon(
                            Icons.arrow_right,
                            size: 50.0,
                          )),
                    ],
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _getBody() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 80.0,
        ),
        Diagonal(
          child: Image.network(
              "https://images.unsplash.com/photo-1567540226479-8b6e8441225f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
          position: Position.TOP_RIGHT,
          clipHeight: 150.0,
        ),
     
      ]
          .map((item) => Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Column(
                  children: <Widget>[
                    
                    item,
                  ],
                ),
              ))
          .toList(),
    );
  }

  void _abc() {
    //
  }
}
//380
