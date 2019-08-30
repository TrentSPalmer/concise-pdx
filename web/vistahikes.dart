import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class VistaHikes extends StatefulWidget {
  @override
  _VistaHikesState createState() => _VistaHikesState();
}

class _VistaHikesState extends State<VistaHikes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hikeable vistas'),
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
              rockyButteHike(),
              mtTabor(),
              olallieButte(),
              larchMountain(),
              angelsRest(),
              multnomahFalls(),
              indianPoint(),
              dogMountain(),
              coyoteWall(),
            ],
          ),
        ),
      ),
    );
  }
}
