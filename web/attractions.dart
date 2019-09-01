import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class Attractions extends StatefulWidget {
  @override
  _AttractionsState createState() => _AttractionsState();
}

class _AttractionsState extends State<Attractions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'attractions',
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
              columbiaGorge(),
              multnomahFalls(),
              mountHood(),
              mountSaintHelens(),
              oregonCoast(),
            ],
          ),
        ),
      ),
    );
  }
}
