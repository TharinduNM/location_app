import 'package:flutter/material.dart';
import 'package:flutter_app/style.dart';

class TextSection extends StatelessWidget {
  String _title;
  String _body;
  static const double _hPad = 16.0;

  TextSection(String title, String body) {
    this._title = title;
    this._body = body;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
          child: Text(_title, style: Theme.of(context).textTheme.title),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
          child: Text(_body, style: Theme.of(context).textTheme.body1),
        ),
      ],
    );
  }
}
