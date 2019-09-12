import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';
import 'washingtonhiking.dart';

class WashingtonState extends StatefulWidget {
  @override
  _WashingtonStateState createState() => _WashingtonStateState();
}

class _WashingtonStateState extends State<WashingtonState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WashingtonState'),
        centerTitle: true,
        backgroundColor: navy,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
        ],
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              mountSaintHelens(),
              olympicNationalPark(),
              mountRanierNationalPark(),
              hanfordReachNationalMonument(),
              channeledScablands(),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => WashingtonHiking()));
                },
                child: cardOne('Hiking in Washington State.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
