import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';

class Hikes extends StatefulWidget {
  @override
  _HikesState createState() => _HikesState();
}

class _HikesState extends State<Hikes> {
  @override
  Widget build(BuildContext context) {

    String _mapTip = 'Most trails are on Google Maps, but service is spotty, so cache some maps offline.';
    _mapTip += ' and take along an auxiliary battery to keep your phone charged.';
    String _prepared = 'Be sure to have water, and adequate clothing and footwear.';
    String _eagleCreekClosed = 'Eagle Creek is still closed on account of fire damage.';
    String _whiteWaterTrailClosed = 'The WhiteWater Trail to Jefferson Park is still closed on account of fire damage.';

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'hikes',
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
              macleayParkPittockMansion(),
              angelsRest(),
              multnomahFalls(),
              // eagleCreek(),
              dogMountain(),
              paradisePark(),
              silverFalls(),
              // jeffersonPark(),
              cardThree(_mapTip),
              cardThree(_prepared),
              cardThree(_eagleCreekClosed),
              cardThree(_whiteWaterTrailClosed),
            ],
          ),
        ),
      ),
    );
  }
}
