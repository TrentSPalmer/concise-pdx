import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'dart:html' as html;

Card infoCard(String leftText,String infoUrl,String infoUrlName) {
  return Card(
    margin: EdgeInsets.only(
      left: 4,
      top: 4,
      right: 4,
      bottom: 0,
    ),
    color: Colors.black,
    child: Card(
      margin: EdgeInsets.all(4.0),
      color: ivory,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: Text(
                leftText,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                child: Icon(
                  Icons.info,
                  size: 50.0,
                  color: Colors.black,
                ),
                onTap: () {
                  html.window.open(infoUrl,infoUrlName);
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Card cardThree(String allText) {
  return Card(
    margin: EdgeInsets.only(
      left: 4,
      top: 4,
      right: 4,
      bottom: 0,
    ),
    color: Colors.black,
    child: Card(
      margin: EdgeInsets.all(4.0),
      color: ivory,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          allText,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    ),
  );
}

Card cardOne(String leftText) {
  return Card(
    margin: EdgeInsets.only(
      left: 4,
      top: 4,
      right: 4,
      bottom: 0,
    ),
    color: Colors.black,
    child: Card(
      margin: EdgeInsets.all(4.0),
      color: ivory,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                leftText,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              child: Icon(
                Icons.arrow_right,
                size: 50.0,
                color: candyApple,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Card cardTwo(String leftText,String mapUrl,String mapUrlName) {
  return Card(
    margin: EdgeInsets.only(
      left: 4,
      top: 4,
      right: 4,
      bottom: 0,
    ),
    color: Colors.black,
    child: Card(
      margin: EdgeInsets.all(4.0),
      color: ivory,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: Text(
                leftText,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                child: Icon(
                  Icons.map,
                  size: 50.0,
                  color: Colors.black,
                ),
                onTap: () {
                  html.window.open(mapUrl,mapUrlName);
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Card convenienceCardOne(String infoUrl,String infoUrlName,String middleText,String mapUrl,String mapUrlName) {
  return Card(
    margin: EdgeInsets.only(
      left: 4,
      top: 4,
      right: 4,
      bottom: 0,
    ),
    color: Colors.black,
    child: Card(
      margin: EdgeInsets.all(4.0),
      color: ivory,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: InkWell(
                child: Icon(
                  Icons.info,
                  size: 50.0,
                  color: candyApple,
                ),
                onTap: () {
                  html.window.open(infoUrl,infoUrlName);
                },
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                middleText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                child: Icon(
                  Icons.map,
                  size: 50.0,
                  color: Colors.black,
                ),
                onTap: () {
                  html.window.open(mapUrl,mapUrlName);
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
