import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'concisepdx.dart';
import 'dart:html' as html;

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  void initState() {
    html.window.history.pushState("","feedback-and-source","/feedback-and-source.html");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ConcisePDX()));
              },
            );
          }
        ), 
        title: Text('feedback'),
        centerTitle: true,
        backgroundColor: navy,
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              infoCard('concise-pdx.com source on GitHub','https://github.com/TrentSPalmer/concise-pdx','a'),
              infoCard('Twitter','https://twitter.com/boringtrent','b'),
              infoCard('FaceBook','https://www.facebook.com/trentspalmer','c'),
            ],
          ),
        ),
      ),
    );
  }
}
