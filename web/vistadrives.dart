import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class VistaDrives extends StatefulWidget {
  @override
  _VistaDrivesState createState() => _VistaDrivesState();
}

class _VistaDrivesState extends State<VistaDrives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('driveable vistas'),
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
              rockyButteDrive(),
              hoganButte(),
              womensForum(),
              crownPoint(),
            ],
          ),
        ),
      ),
    );
  }
}
