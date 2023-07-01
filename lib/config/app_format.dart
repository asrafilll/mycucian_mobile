import 'package:intl/intl.dart';

class AppFormat {
  static String shortPrice(num number) {
    return NumberFormat.compactCurrency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(number);
  }

  static String longPrice(num number) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(number);
  }

  static String justDate(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  // Source = DateTime | String
  // Monday, 2 Jan 23
  static String edMy(source) {
    switch (source.runtimeType) {
      case String:
        return DateFormat('EEEE, d MMM y').format(DateTime.parse(source));
      case DateTime:
        return DateFormat('EEEE, d MMM y').format(source);
      default:
        return 'Not Valid';
    }
  }

  // Source = DateTime | String
  // Monday, 2 January 2023
  static String fullEDMY(source) {
    switch (source.runtimeType) {
      case String:
        return DateFormat('EEEE, d MMMM yyyy').format(DateTime.parse(source));
      case DateTime:
        return DateFormat('EEEE, d MMMM yyyy').format(source);
      default:
        return 'Not Valid';
    }
  }
}
