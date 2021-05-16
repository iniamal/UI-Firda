import 'package:flutter/material.dart';
import 'package:mpirda/screens/constants/text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mpirda/screens/constants/style_constant.dart';

class Room extends StatefulWidget {
  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                'BONES RESORT',
                style: titlestyle,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 100)),
            SvgPicture.asset(
              'assets/svg/bulet.svg',
              height: 25,
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 16, top: 10),
              child: Text(
                'PILIH HOTELMU',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.only(left: 16, right: 10, top: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'assets/images/salak.jpg',
                          height: 150,
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 35),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Tamu',
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ConstrainedBox(
                                      constraints:
                                          BoxConstraints(minHeight: 50),
                                      child: Icon(
                                        Icons.add,
                                        size: 20,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Text('0'),
                                    ),
                                    ConstrainedBox(
                                      constraints:
                                          BoxConstraints(minHeight: 50),
                                      child: Icon(
                                        Icons.remove,
                                        size: 20,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(15),
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Text(
                    'Pilih',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Room(),
                        ));
                  },
                )),
            Container(
              height: 150,
              margin: EdgeInsets.only(left: 16, right: 10, top: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'assets/images/pang.jpg',
                          height: 150,
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 35),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Tamu',
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ConstrainedBox(
                                    constraints: BoxConstraints(minHeight: 50),
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Text('0'),
                                  ),
                                  ConstrainedBox(
                                    constraints: BoxConstraints(minHeight: 50),
                                    child: Icon(
                                      Icons.remove,
                                      size: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(15),
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Text(
                    'Pilih',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Room(),
                        ));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
