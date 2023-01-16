import 'package:flutter/material.dart';

class Utils {
  static String toSpaceSeparated(String s) {
    const n = 4;
    assert(s.length % n == 0);
    var i = s.length - n;
    while (i > 0) {
      s = s.replaceRange(i, i, ' ');
      i -= n;
    }
    return s;
  }

  static const _abbrList = [
    _NumAbbr(1000000000, "B", maxValue: 999000000000, maxReplacement: "999B+"),
    _NumAbbr(1000000, "M"),
    _NumAbbr(1000, "K"),
  ];
  static String numAbbreviate(num number) {
    for (final element in _abbrList) {
      final result = element.numAbbreviate(number);
      if (result != null) return result;
    }
    return number.toString();
  }
}

class _NumAbbr {
  final num minValue;
  final String name;
  final num? maxValue;
  final String? maxReplacement;

  const _NumAbbr(this.minValue, this.name,
      {this.maxValue, this.maxReplacement});

  String? numAbbreviate(num number) {
    if (maxValue != null && number > maxValue!) return maxReplacement;
    if (number >= minValue) {
      var n = number / minValue;
      n = n - (n % 0.1);
      return "${n.toStringAsFixed(1)}$name";
    }
    return null;
  }
}

class TextPart {
  String text;
  bool isBold;

  TextPart(this.text, this.isBold);
}

height_5() {
  return const SizedBox(
    height: 5,
  );
}

height_16() {
  return const SizedBox(
    height: 16,
  );
}

height_7() {
  return const SizedBox(
    height: 7,
  );
}

height_8() {
  return const SizedBox(
    height: 8,
  );
}

height_10() {
  return const SizedBox(
    height: 10,
  );
}

height_15() {
  return const SizedBox(
    height: 15,
  );
}

height_20() {
  return const SizedBox(
    height: 20,
  );
}

height_30() {
  return const SizedBox(
    height: 30,
  );
}

width_8() {
  return const SizedBox(
    width: 8,
  );
}

typedef OnSelectPrayerCategory = void Function(int index);

typedef OnStatusBarColored = void Function(bool colored);

typedef OnEmometerSelected = void Function();
