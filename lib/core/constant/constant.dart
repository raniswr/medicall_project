import 'package:flutter/material.dart';

class Constant {}

//DIVIDERS
class HeightDivider extends StatelessWidget {
  final double? height;
  const HeightDivider({
    Key? key,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height ?? 20);
  }
}

class WidthDivider extends StatelessWidget {
  final double? width;
  const WidthDivider({
    Key? key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width ?? 20);
  }
}
