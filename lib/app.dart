import 'package:flutter/material.dart';
import 'package:flutter_app/screens/locations/locations.dart';
import 'style.dart';
import 'package:flutter_app/locationDetails.dart';

const LocationsRoute =
    '/'; //this is gonna load first, so no need to define the initial route when using this.
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetails(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(title: AppBarTextStyle),
      ),
      textTheme: TextTheme(
        title: TopicTextStyle,
        body1: BodyTextStyle,
        body2: AppBarTextStyle,
        caption: CaptionTextStyle,
        subtitle: SubtitleTextStyle,
      ),
    );
  }
}
