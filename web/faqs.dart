import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'trimet.dart';
import 'chinesejapanesegardens.dart';
import 'card_templates.dart';

class Faqs extends StatefulWidget {
  @override
  _FaqsState createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => TriMet()));
                },
                child: cardOne('How do the buses, lightrail, and streetcars work?'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => ChineseJapaneseGardens()));
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
