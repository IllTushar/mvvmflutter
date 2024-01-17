import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class UtilsFile {
  static void focusNodes(
      BuildContext context, FocusNode current, FocusNode next) {
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }

  static void toastForSuccessMessage(BuildContext context, String message) {
    CherryToast.success(
      title: Text(message),
      borderRadius: 0,
    ).show(context);
  }

  static void toastForFailedMessage(BuildContext context, String message) {
    CherryToast.error(
      title: Text(message),
      borderRadius: 0,
    ).show(context);
  }

  static void showSuccessFlushbar(
      BuildContext context, String title, String message) {
    Flushbar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.green,
      icon: Icon(
        Icons.check_circle,
        color: Colors.white,
      ),
    )..show(context);
  }

  static void showFailedFlushbar(
      BuildContext context, String title, String message) {
    Flushbar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.red,
      icon: Icon(
        Icons.block,
        color: Colors.white,
      ),
    )..show(context);
  }
}
