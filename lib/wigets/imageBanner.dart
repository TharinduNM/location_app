import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _imagePath;
  final _imageHeight;

  ImageBanner(this._imagePath, this._imageHeight);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      constraints: BoxConstraints.expand(
        height: _imageHeight,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
