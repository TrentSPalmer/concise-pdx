import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class RemoteVistas extends StatefulWidget {
  @override
  _RemoteVistasState createState() => _RemoteVistasState();
}

class _RemoteVistasState extends State<RemoteVistas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('remote-vistas'),
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
              olallieButte(),
              highRockLookOut(),
            ],
          ),
        ),
      ),
    );
  }
}
