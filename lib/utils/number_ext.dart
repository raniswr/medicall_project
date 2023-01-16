import 'package:intl/intl.dart';

extension NumberExt on int {
  String toRupiah() {
    return "Rp${NumberFormat('#,##0', 'ID').format(this)}";
  }
}

extension NumberDoubleExt on double {
  String toRupiah() {
    return "Rp${NumberFormat('#,##0', 'ID').format(this)}";
  }
}
