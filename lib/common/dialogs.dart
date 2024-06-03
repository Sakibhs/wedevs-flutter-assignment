import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum DialogsAction { yes, cancel }

class Dialogs {


  static Future<DialogsAction> generalDialog(
      BuildContext context,
      // String title,
      String body,
      ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xff364156),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          // title: Text(title),
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
          icon: Icon(
            Icons.notifications_none_outlined,
            color: Colors.white,
            size: 40,
          ),
          actions: <Widget>[
            InkWell(
              onTap: () => Navigator.of(context).pop(DialogsAction.yes),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color(0xff6ACC86),
                ),
                child: Text(
                  'ok'.tr,
                  style: TextStyle(
                    color: Color(0xFFffffff),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : DialogsAction.cancel;
  }





  // static Future<DialogsAction> changePasswordDialog(
  //     BuildContext context,
  //     ) async {
  //   final action =
  //   return (action != null) ? action : DialogsAction.cancel;
  // }

}
