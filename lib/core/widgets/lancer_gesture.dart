import 'package:flutter/material.dart';

class LancerGesture extends GestureDetector {
  LancerGesture({Key? key, Widget? child}) : super(key: key, child: child);

  @override
  GestureTapCallback? get onTap => _adl;

  void _adl() {
    FocusManager.instance.primaryFocus?.unfocus();
    super.onTap?.call();
  }
}
