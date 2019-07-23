import 'package:flutter/material.dart';
import 'package:flutter_app/models/location.dart';
import 'package:flutter_app/app.dart';
import 'package:flutter_app/wigets/imageBanner.dart';
import 'package:flutter_app/screens/locations/tileOverlay.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: Text("Locations for You"),
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) =>
              _itemBuilder(context, locations[index]),
        ));
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {"id": locationID});
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      child: Container(
        height: 240.0,
        child: Stack(
          children: [
            ImageBanner(location.imagePath, 240.0),
            TileOverlay(location, true),
          ],
        ),
      ),
      onTap: () => _onLocationTap(context, location.id),
    );
  }
}
