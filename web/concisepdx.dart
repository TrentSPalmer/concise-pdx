import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'streetareas.dart';
import 'vistas.dart';
import 'faqs.dart';
import 'hikes.dart';
import 'attractions.dart';
import 'feedback.dart';
import 'card_templates.dart';
import 'middlesoutheaststreets.dart';
import 'sellwoodstreets.dart';
import 'northeaststreets.dart';
import 'northstreets.dart';
import 'stjohnsstreets.dart';
import 'northweststreets.dart';
import 'northweststreetssights.dart';
import 'southwest.dart';
import 'smalltowns.dart';
import 'washingtonpark.dart';
import 'eastwillamettevalley.dart';
import 'westwillamettevalley.dart';
import 'eastcounty.dart';
import 'silverton.dart';
import 'oregoncity.dart';
import 'oregoncitysights.dart';
import 'westwillamettevalleysights.dart';
import 'eastwillamettevalleysights.dart';
import 'mounthood.dart';
import 'oregoncoast.dart';
import 'columbiagorge.dart';
import 'washingtonstate.dart';
import 'centraloregon.dart';
import 'gorgecamping.dart';
import 'washingtonhiking.dart';
import 'vistadrives.dart';
import 'vistawalks.dart';
import 'vistahikes.dart';
import 'gorgevistas.dart';
import 'remotevistas.dart';
import 'vistasnorthpdx.dart';
import 'vistasnortheastpdx.dart';
import 'vistassoutheastpdx.dart';
import 'greshamvistas.dart';
import 'oregoncityvistas.dart';
import 'trimet.dart';
import 'chinesejapanesegardens.dart';

void main() {
  var routePath = "/";

  var route = html.window.document.getElementById("route");
  if (route != null) {
    routePath += route.innerHtml;
  }

  runApp(MainApp(routePath));
}

class MainApp extends StatelessWidget {

  final String route;
  MainApp(this.route);

  Widget page() {
    switch (route) {
      case "/": return ConcisePDX();
      case "/walkable-street-areas.html": return StreetAreas();
      case "/must-see-and-do.html": return Attractions();
      case "/must-hikes.html": return Hikes();
      case "/vistas-and-overlooks.html": return Vistas();
      case "/faqs.html": return Faqs();
      case "/feedback-and-source.html": return FeedBack();
      case "/middle-se-streets.html": return MiddleSouthEastStreets();
      case "/sellwood-streets.html": return SellwoodStreets();
      case "/northeast-streets.html": return NorthEastStreets();
      case "/north-streets.html": return NorthStreets();
      case "/stjohns-streets.html": return StJohnsStreets();
      case "/northwest-streets.html": return NorthWestStreets();
      case "/northwest-streets-sights.html": return NorthWestStreetsSights();
      case "/southwest-streets.html": return SouthWestStreets();
      case "/small-town-streets.html": return SmallTowns();
      case "/washington-park.html": return WashingtonPark();
      case "/east-willamette-valley.html": return EastWillametteValley();
      case "/west-willamette-valley.html": return WestWillametteValley();
      case "/east-county.html": return EastCounty();
      case "/silverton.html": return Silverton();
      case "/oregon-city.html": return OregonCity();
      case "/oregon-city-sights.html": return OregonCitySights();
      case "/west-willamette-valley-sights.html": return WestWillametteValleySights();
      case "/east-willamette-valley-sights.html": return EastWillametteValleySights();
      case "/mthood.html": return MountHood();
      case "/oregon-coast.html": return OregonCoast();
      case "/columbia-gorge.html": return ColumbiaGorge();
      case "/washington-state.html": return WashingtonState();
      case "/central-oregon.html": return CentralOregon();
      case "/columbia-gorge-camping.html": return GorgeCamping();
      case "/washington-hiking.html": return WashingtonHiking();
      case "/driveable-vistas.html": return VistaDrives();
      case "/walkable-vistas.html": return VistaWalks();
      case "/hikeable-vistas.html": return VistaHikes();
      case "/gorge-vistas.html": return GorgeVistas();
      case "/remote-vistas.html": return RemoteVistas();
      case "/vistas-north-pdx.html": return VistasNorthPDX();
      case "/vistas-ne-pdx.html": return VistasNorthEastPDX();
      case "/vistas-se-pdx.html": return VistasSouthEastPDX();
      case "/gresham-vistas.html": return GreshamVistas();
      case "/oregon-city-vistas.html": return OregonCityVistas();
      case "/trimet.html": return TriMet();
      case "/chinese-japanese-gardens.html": return ChineseJapaneseGardens();
      default: return ConcisePDX();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page(),
    );
  }
}

class ConcisePDX extends StatefulWidget {
  @override
  _ConcisePDXState createState() => _ConcisePDXState();
}

class _ConcisePDXState extends State<ConcisePDX> {
  void initState() {
    html.window.history.pushState("","concise-pdx","/#/");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('concise-pdx'),
        centerTitle: true,
        backgroundColor: navy,
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StreetAreas()));
                },
                child: cardOne('Walkable Streets With Restaurants and Bars'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Attractions()));
                },
                child: cardOne('Must See and Do'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Hikes()));
                },
                child: cardOne('Must Hikes'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Vistas()));
                },
                child: cardOne('Vistas and Overlooks'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Faqs()));
                },
                child: cardOne('FAQ\'s'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FeedBack()));
                },
                child: cardOne('Feedback and Source'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
