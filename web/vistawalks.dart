import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class VistaWalks extends StatefulWidget {
  @override
  _VistaWalksState createState() => _VistaWalksState();
}

class _VistaWalksState extends State<VistaWalks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable vistas'),
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
              waudBluff(),
              mtTabor(),
              hoganButte(),
              highRockLookOut(),
              larchMountain(),
              multnomahFalls(),
            ],
          ),
        ),
      ),
    );
  }
}
