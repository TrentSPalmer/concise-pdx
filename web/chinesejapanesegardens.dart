import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';
import 'dart:html' as html;
import 'faqs.dart';

class ChineseJapaneseGardens extends StatefulWidget {
  @override
  _ChineseJapaneseGardensState createState() => _ChineseJapaneseGardensState();
}

class _ChineseJapaneseGardensState extends State<ChineseJapaneseGardens> {
  void initState() {
    html.window.history.pushState("","chinese-japanese-gardens","/chinese-japanese-gardens.html");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    String _answer = 'The Chinese Garden is a small garden in China Town that will take up maybe an hour of your time.';
    _answer += ' Whereas, Japanese Garden is part of the Washington Park complex, which has many attractions,';
    _answer += ' and is a destination itself.';

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Faqs()));
              },
            );
          }
        ), 
        title: Text('chinese-japanese-gardens'),
        centerTitle: true,
        backgroundColor: navy,
        actions: <Widget>[
          Home(context),
        ],
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              cardThree(_answer),
              japaneseGarden(),
              chineseGarden(),
            ],
          ),
        ),
      ),
    );
  }
}
