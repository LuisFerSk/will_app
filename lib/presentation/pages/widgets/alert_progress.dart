import 'package:flutter/material.dart';
import 'package:will_app/core/frameword/colors.dart';
import 'package:will_app/core/frameword/font.dart';

Future<void> alertDialogLoading({required BuildContext context}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return _AlertDialog();
    },
  );
}

class _AlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              const CircularProgressIndicator(
                color: ColorsTheme.primary,
              ),
              SizedBox(height: size.height * 0.016),
              Text(
                'Cargando...',
                style: FontTheme.body,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
