import 'package:flutter/material.dart';
import 'package:projeto1/shared/styles.dart';

class TitleDefault extends StatelessWidget {
  final String _title;
  final double _fontSize;

  const TitleDefault({required String title, double? fontSize, super.key})
      : _title = title,
        _fontSize = fontSize ?? 18.0;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: TextStyle(
        color: AppStyle.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize:  _fontSize,
      ),
    );
  }
}
