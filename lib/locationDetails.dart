import 'package:flutter/material.dart';
import 'package:flutter_app/screens/location_details/textSection.dart';
import 'package:flutter_app/wigets/imageBanner.dart';
import 'package:flutter_app/models/location.dart';
import 'package:flutter_app/wigets/locationTile.dart';
import 'package:flutter_app/network_calls/post.dart';

class LocationDetails extends StatefulWidget {
  final int _locationID;

  LocationDetails(this._locationID);

  @override
  State<StatefulWidget> createState() {
    return _LocationDetails();
  }
}

class _LocationDetails extends State<LocationDetails> {
  Post post;

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(widget._locationID);
    // TODO: implement build

    fetchPost().then(callGet);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            ImageBanner(location.imagePath, 200.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: LocationTile(
                location: location,
              ),
            )
          ]
            ..addAll(textSections(location))
            ..add(post == null ? Container() : _buildGet()),
        ),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.fact))
        .toList();
  }

  callGet(post) {
    if (mounted) {
      setState(() {
        this.post = post;
      });
    }
  }

  Widget _buildGet() {
    return TextSection("Title of API response", post.title);
  }
}
