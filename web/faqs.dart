import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'trimet.dart';
import 'chinesejapanesegardens.dart';
import 'card_templates.dart';
import 'concisepdx.dart';
import 'dart:html' as html;

class Faqs extends StatefulWidget {
  @override
  _FaqsState createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  void initState() {
    html.window.history.pushState("","faqs","/faqs.html");
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
        title: Text(
            'faqs',
          ),
        centerTitle: true,
        backgroundColor: navy,
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TriMet()));
                },
                child: cardOne('How do the buses, lightrail, and streetcars work?'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChineseJapaneseGardens()));
                },
                child: cardOne('What is the difference between Chinese Gardens and Japanese Gardens?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
