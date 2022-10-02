import 'package:intl/intl.dart';

String formatCurrency(double value) {
  var f = NumberFormat('###.00', 'en_US');
  return f.format(value);
}
