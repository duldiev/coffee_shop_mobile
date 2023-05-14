import 'package:intl/intl.dart';

class DateConverter {
  static String convertDate(
    DateTime? date,
  ) =>
      DateFormat('EEE, kk:mm').format(date ?? DateTime.now());
}
