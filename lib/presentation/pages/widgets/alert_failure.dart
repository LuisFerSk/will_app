import 'package:flutter/material.dart';
import 'package:will_app/core/frameword/colors.dart';
import 'package:will_app/core/frameword/font.dart';

Future<void> alertDialogFailure({
  required BuildContext context,
  required String message,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return _AlertDialog(message: message);
    },
  );
}

class _AlertDialog extends StatelessWidget {
  final String message;

  const _AlertDialog({required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsTheme.scaffoldBackground,
      contentPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: SizedBox(
        height: 100,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                style: FontTheme.body,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
