import 'package:intl/intl.dart';

class Utils{

  static String formatDate(var date) {
    late DateTime dateTime;
    if (date is String) {
      dateTime = DateTime.parse(date);
    } else {
      dateTime = date;
    }
    return DateFormat('dd-MM-yyyy').format(dateTime);
    // return DateFormat('yyyy-MM-dd').format(dateTime);
  }

}