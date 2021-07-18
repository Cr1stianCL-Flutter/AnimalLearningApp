import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import '../../model/jsonRoute.model.dart';
import 'package:flutter/services.dart' show rootBundle;

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

////https://pub.dev/packages/carousel_slider/example -->ejemplos carousel

class _IndexPageState extends State<IndexPage> {
  getjsonroutes() async {
    String jsonString =
        await rootBundle.loadString("assets/RoutejsonFormatted.json");
    final jsonResponse = jsonDecode(jsonString);

    JsonRoutes routes = new JsonRoutes();
    final jsonparsed = routes.toJson(jsonResponse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
