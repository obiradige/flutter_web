
import 'package:flutter/material.dart';
import 'package:palet/application/locator.dart';
import 'package:palet/application/navigation_service.dart';

import 'package:rflutter_alert/rflutter_alert.dart';

class AlertService {
  final NavigationService _navigationService = getIt<NavigationService>();

  showSuccessAlert(
      {void Function()? onPressed,
      required String title,
      required String desc}) {
    Alert(
      context: _navigationService.context,
      title: title,
      desc: desc,
      style: const AlertStyle(
        animationType: AnimationType.fromTop,
        isButtonVisible: true,
        animationDuration: Duration(milliseconds: 200),
      ),
      buttons: [
        DialogButton(
          onPressed: () async {
            Navigator.pop(_navigationService.context);
            if (onPressed != null) {
              await Future.delayed(const Duration(milliseconds: 200), () async {
                return onPressed();
              });
            }
          },
          width: 200,
          child: const Text(
            "TAMAM",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    ).show();
  }

  showScaffoldMessage({
    required Widget child,
    required String title,
  }) {
    ScaffoldMessenger.of(_navigationService.context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                title,
                maxLines: 3,
              
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
