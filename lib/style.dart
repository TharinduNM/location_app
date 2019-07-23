import 'package:flutter/material.dart';

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const SmallTextSize = 16.0;

const String FontNameDefault = "Monstserrat";

const Color TextColorDark = Colors.black;
const Color TextColorLight = Colors.white;
const Color TextColorAccent = Colors.red;
const Color TextColorFaint = Color.fromRGBO(125, 125, 125, 1.0);

const DefaultPaddingHorizontal = 12.0;

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w400,
  fontSize: LargeTextSize,
  color: Colors.white,
);

const TopicTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w500,
  fontSize: MediumTextSize,
  color: Colors.lightBlue,
);

const BodyTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: SmallTextSize,
  color: Colors.black,
);

const SubtitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: SmallTextSize,
  color: TextColorAccent,
);

const CaptionTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: SmallTextSize,
  color: TextColorDark,
);

