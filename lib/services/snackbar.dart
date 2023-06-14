import 'package:fluttertoast/fluttertoast.dart';

import '../constants/colors.dart';

class SnackbarUtil {
  static void showSuccess({required String message}) {
    Fluttertoast.showToast(
        msg: message, toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 2, backgroundColor: secondYellowColor, textColor: white, fontSize: 16.0);
  }

  static void showWarning({required String message}) {
    Fluttertoast.showToast(
        msg: message, toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 2, backgroundColor: orange, textColor: white, fontSize: 16.0);
  }

  static void showError({required String message}) {
    Fluttertoast.showToast(
        msg: message, toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 2, backgroundColor: red, textColor: white, fontSize: 16.0);
  }
}
