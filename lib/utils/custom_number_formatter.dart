import 'package:intl/intl.dart';

class CustomNumberFormatter {
  static final CustomNumberFormatter _singleton =
      CustomNumberFormatter._internal();

  factory CustomNumberFormatter() {
    return _singleton;
  }

  CustomNumberFormatter._internal();

  final NumberFormat _numberFormat = NumberFormat.compact();

  String transformToCompact(double number) {
    return _numberFormat.format(number);
  }
}
