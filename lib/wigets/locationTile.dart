import 'package:flutter/material.dart';
import '../models/location.dart';
import 'package:flutter_app/style.dart';

const LocationTileHeight = 100.0;

class LocationTile extends StatelessWidget {
  final Location location;
  final bool darkTheme;

  LocationTile({this.location, this.darkTheme = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.darkTheme ? TextColorLight : TextColorDark;

    final title = location.name.toUpperCase();
    final subTitle = location.userItinerarySummary.toUpperCase();
    final caption = location.tourPackageName.toUpperCase();
    return Container(
      padding: EdgeInsets.all(0.0),
      height: LocationTileHeight,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$title',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(color: textColor)),
            Text('$subTitle', style: Theme.of(context).textTheme.subtitle),
            Text('$caption',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: textColor)),
          ]),
    );
  }
}
