import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class GorgeVistas extends StatefulWidget {
  @override
  _GorgeVistasState createState() => _GorgeVistasState();
}

class _GorgeVistasState extends State<GorgeVistas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gorge-vistas'),
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
              larchMountain(),
              womensForum(),
              crownPoint(),
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
