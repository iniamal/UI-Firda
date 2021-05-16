import 'package:flutter/material.dart';
import 'package:mpirda/screens/constants/text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mpirda/screens/constants/color_constant.dart';
import 'package:mpirda/screens/constants/style_constant.dart';
import 'package:mpirda/screens/page2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F7FF),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFFF6F7FF),
          title: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  'BONES RESORT',
                  style: titlestyle,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 120)),
              SvgPicture.asset(
                'assets/svg/bulet.svg',
                height: 25,
              )
            ],
          ),
        ),
        body: Container(
            child:
                ListView(physics: ClampingScrollPhysics(), children: <Widget>[
          Image.asset('assets/images/cover.jpeg'),
          Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            'BOOKING SEKARANG!',
            textAlign: TextAlign.center,
            style: bodytitle,
          ),
          Container(
              height: 160,
              margin: EdgeInsets.only(left: 16, right: 10, top: 20),
              child: Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Room(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            padding: EdgeInsets.only(left: 2),
                            height: 150,
                            decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: mBorderColor, width: 1),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 4, bottom: 10)),
                                Text(
                                  'CHECK IN TIME',
                                  style: mTitleStyle,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'X',
                                        textAlign: TextAlign.center,
                                        style: mClassStyle,
                                      ),
                                      Padding(padding: EdgeInsets.all(5)),
                                      Text('mm/yyyy', style: mSubtitle),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Room(),
                                ));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            padding: EdgeInsets.only(left: 2),
                            height: 150,
                            decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: mBorderColor, width: 1),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 4, bottom: 10)),
                                Text('CHECKOUT TIME', style: mTitleStyle),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'X',
                                        textAlign: TextAlign.center,
                                        style: mClassStyle,
                                      ),
                                      Padding(padding: EdgeInsets.all(5)),
                                      Text('mm/yyyy', style: mSubtitle),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ])),
          Container(
              margin: EdgeInsets.all(15),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Text(
                  'Cari',
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
              ))
        ])));
  }
}
