import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'columbiagorge.dart';

class GorgeCamping extends StatefulWidget {
  @override
  _GorgeCampingState createState() => _GorgeCampingState();
}

class _GorgeCampingState extends State<GorgeCamping> {
  void initState() {
    html.window.history.pushState("","columbia-gorge-camping","/columbia-gorge-camping.html");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ColumbiaGorge()));
              },
            );
          }
        ), 
        title: Text('gorge-camping'),
        centerTitle: true,
        backgroundColor: navy,
        actions: <Widget>[
          Home(context),
        ],
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              convenienceCardOne(
                'https://oregonstateparks.org/index.cfm?do=parkPage.dsp_parkPage&parkId=105',
                'ainsworth',
                'Camp at Ainsworth State Park Oregon',
                'https://www.google.com/maps/@45.597435,-122.0518624,17z',
                'ainsworth-map'
              ),
              convenienceCardOne(
                'https://oregonstateparks.org/index.cfm?do=parkPage.dsp_parkPage&parkId=123',
                'viento',
                'Camp at Viento State Park Oregon',
                'https://www.google.com/maps/@45.6974966,-121.6672281,17z',
                'viento-map'
              ),
              convenienceCardOne(
                'https://oregonstateparks.org/index.cfm?do=parkPage.dsp_parkPage&parkId=118',
                'memaloose',
                'Camp at Memaloose State Park Oregon',
                'https://www.google.com/maps/@45.6967538,-121.3429743,17z',
                'memaloose-map'
              ),
              convenienceCardOne(
                'https://oregonstateparks.org/index.cfm?do=parkPage.dsp_parkPage&parkId=29',
                'deschutes',
                'Camp at Deschutes River State Park Oregon',
                'https://www.google.com/maps/@45.6319205,-120.9064152,17z',
                'deschutes-map'
              ),
              convenienceCardOne(
                'https://www.fs.usda.gov/recarea/crgnsa/recreation/camping-cabins/recarea/?recid=29906&actid=29',
                'eagle-creek',
                'Camp at Eagle Creek Federal Campground Oregon',
                'https://www.google.com/maps/@45.642244,-121.925284,17z',
                'eagle-creek-map'
              ),
              convenienceCardOne(
                'https://www.fs.usda.gov/recarea/crgnsa/recreation/camping-cabins/recarea/?recid=30008&actid=29',
                'wyeth',
                'Camp at Wyeth Federal Campground Oregon',
                'https://www.google.com/maps/@45.690305,-121.772188,17z',
                'wyeth-map'
              ),
              convenienceCardOne(
                'https://parks.state.wa.us/474/Beacon-Rock',
                'beacon-rock',
                'Camp at Beacon Rock State Park Washington',
                'https://www.google.com/maps/@45.6287669,-122.0291639,15z',
                'beacon-rock-map'
              ),
              convenienceCardOne(
                'https://parks.state.wa.us/489/Columbia-Hills',
                'columbia-hills',
                'Camp at Columbia Hills State Park Washington',
                'https://www.google.com/maps/@45.643124,-121.1039948,15z',
                'columbia-hills-map'
              ),
              convenienceCardOne(
                'https://parks.state.wa.us/543/Maryhill',
                'mary-hill',
                'Camp at Mary Hill State Park Washington',
                'https://www.google.com/maps/@45.6819927,-120.8316575,15z',
                'mary-hill-map'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
