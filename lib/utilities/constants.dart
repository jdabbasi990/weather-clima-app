import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Montserrat',
  color: Colors.white,
);
const kButtonTextStylecity = TextStyle(
  fontSize: 50,
  fontFamily: 'Montserrat',
  color: Colors.white,
  // fontWeight: FontWeight.bold,
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

final kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white70,
  icon: FaIcon(
    FontAwesomeIcons.searchLocation,
    color: Colors.white,
  ),
  hintText: 'Enter city name.',
  hintStyle: TextStyle(
    color: Colors.grey[850],
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide.none,
  ),
);
