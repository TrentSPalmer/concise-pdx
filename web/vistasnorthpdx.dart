import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class VistasNorthPDX extends StatefulWidget {
  @override
  _VistasNorthPDXState createState() => _VistasNorthPDXState();
}

class _VistasNorthPDXState extends State<VistasNorthPDX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('north-pdx-vistas'),
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
            ],
          ),
        ),
      ),
    );
  }
}
