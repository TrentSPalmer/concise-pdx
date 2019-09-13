import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';

class CentralOregon extends StatefulWidget {
  @override
  _CentralOregonState createState() => _CentralOregonState();
}

class _CentralOregonState extends State<CentralOregon> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('central-eastern-oregon'),
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
              lavaButte(),
              newberryCrater(),
              craterLake(),
              fortRock(),
              hartMountain(),
              malheurLake(),
              steensMountain(),
              alvordDesert(),
              owyheeCanyonLands(),
              wallowaLake(),
              hellsCanyon(),
              johnDayFossilBeds(),
              /*
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => WashingtonHiking()));
                },
                child: cardOne('Hiking in Washington State.'),
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}
