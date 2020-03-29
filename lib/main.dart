import 'package:flutter/material.dart';
import 'package:flutterbloc/ui/country_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF02BB9F),
        primaryColorDark:  Color(0xFF167F67),
        accentColor:  Color(0xFF167F67),
      ),
      home: Scaffold(
        body: CountryList(),
      ),
    );
  }
}
