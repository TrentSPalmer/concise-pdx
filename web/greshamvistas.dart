import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class GreshamVistas extends StatefulWidget {
  @override
  _GreshamVistasState createState() => _GreshamVistasState();
}

class _GreshamVistasState extends State<GreshamVistas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gresham-vistas'),
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
              hoganButte(),
            ],
          ),
        ),
      ),
    );
  }
}
