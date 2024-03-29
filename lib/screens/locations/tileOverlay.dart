import 'package:flutter/material.dart';
import 'package:flutter_app/models/location.dart';
import 'package:flutter_app/wigets/locationTile.dart';

class TileOverlay extends StatelessWidget {
  final Location location;
  final bool darkTheme;

  TileOverlay(this.location, this.darkTheme);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: darkTheme
              ? BoxDecoration(color: Colors.black.withOpacity(0.5))
              : BoxDecoration(color: Colors.white12),
          child: LocationTile(location: location, darkTheme: true),
        ),
      ],
    );
  }
}
