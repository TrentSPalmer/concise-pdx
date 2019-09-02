import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class WashingtonPark extends StatefulWidget {
  @override
  _WashingtonParkState createState() => _WashingtonParkState();
}

class _WashingtonParkState extends State<WashingtonPark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('washingtonpark'),
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
      body: Column(
        children: <Widget>[
          oregonZoo(),
          japaneseGarden(),
          roseGarden(),
          hoytArboretum(),
          pittockMansion(),
        ],
      ),
    );
  }
}
