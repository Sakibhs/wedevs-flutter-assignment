import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'dialogs.dart';



//==============================================================================
// ** Snacks **
//==============================================================================

errorSnack(String error) {
  showSnackBar(
    "Error",
    error,
    backgroundColor: Color(0xffF44336),
  );
}

generalErrorSnack(String title, String error) {
  showSnackBar(
    title,
    error,
    backgroundColor: Color(0xffF44336),
  );
}

successSnack(String success) {
  showSnackBar("Success", success,
      backgroundColor: Color(0xff34B233));
}

showSnackBar(String title, String message,
    {Color? backgroundColor, Color? textColor}) {
  DialogService.generalDialog(title, message, backgroundColor);
}


showDialogWithIcon(IconData icon, String title, String body, String actionText, Color? backgroundColor) async {
  DialogService.dialogWithIcon(icon, title, body, actionText, backgroundColor);
}

class DialogService {
  static Future<DialogsAction> generalDialog(
      String title, String body, Color? backgroundColor) async {
    final action = await Get.dialog(
      AlertDialog(
        backgroundColor: backgroundColor,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            letterSpacing: 1.16,
          ),
        ),
        content: Text(
          body,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            letterSpacing: 1.16,
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Get.back(result: DialogsAction.cancel);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xff6ACC86),
              ),
              child: Text(
                'OK',
                style: TextStyle(
                  color: Color(0xFFffffff),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    return (action != null) ? action : DialogsAction.cancel;
  }


  static Future<DialogsAction> dialogWithIcon(
      IconData icon,
      String title, String body, String actionText, Color? backgroundColor) async {
    final action = await Get.dialog(
      AlertDialog(
        backgroundColor: backgroundColor,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        icon: Icon(icon, color: Colors.white, size: 40,),
        content: Text(
          body,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            letterSpacing: 1.16,
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Get.back(result: DialogsAction.cancel);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xff6ACC86),
              ),
              child: Text(
                'OK',
                style: TextStyle(
                  color: Color(0xFFffffff),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    return (action != null) ? action : DialogsAction.cancel;
  }

  static Future<DialogsAction> resetPasswordDialog(
      String title, String body, Color? backgroundColor) async {
    final action = await Get.dialog(
      AlertDialog(
        backgroundColor: backgroundColor,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            letterSpacing: 1.16,
          ),
        ),
        content: Text(
          body,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            letterSpacing: 1.16,
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xff6ACC86),
              ),
              child: Text(
                'Ok',
                style: TextStyle(
                  color: Color(0xFFffffff),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    return (action != null) ? action : DialogsAction.cancel;
  }

}
