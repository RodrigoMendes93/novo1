import 'package:flutter/material.dart';
import 'package:projeto1/shared/styles.dart';

class TextDefault extends StatelessWidget {
  final String _title;
  final Color color;
  final double? _fontSize;
  final FontWeight? fontWeight;

  const TextDefault({
    required String title,
    required this.color,
    double? fontSize,
    this.fontWeight,
    super.key,
  })  : _title = title,
        _fontSize = fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: TextStyle(
        color: AppStyle.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: _fontSize,
      ),
    );
  }
}
