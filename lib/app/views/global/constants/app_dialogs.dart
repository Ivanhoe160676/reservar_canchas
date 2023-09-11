// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:reserva_canchas/app/views/global/constants/app_colors.dart';
import 'package:reserva_canchas/app/views/global/constants/app_constant.dart';
import 'package:reserva_canchas/app/views/global/constants/app_images.dart';
import 'package:reserva_canchas/app/views/global/constants/app_strings.dart';
import 'package:reserva_canchas/app/views/global/widgets/app_widget.dart';
import 'package:reserva_canchas/app/views/screens/login/login_screen.dart';

class T5Dialog extends StatefulWidget {
  static var tag = "/dialog5";

  const T5Dialog({super.key});

  @override
  T5DialogState createState() => T5DialogState();
}

class T5DialogState extends State<T5Dialog> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1000), () {
      showDialog(
        context: context,
        builder: (BuildContext context) => const CustomDialog(),
      );
    });
    return const LoginScreen();
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  var width = context.width();

  return Container(
    decoration: BoxDecoration(
      color: context.scaffoldBackgroundColor,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          offset: Offset(0.0, 10.0),
        ),
      ],
    ),
    width: context.width(),
    child: Column(
      mainAxisSize: MainAxisSize.min, // To make the card compact
      children: <Widget>[
        GestureDetector(
          onTap: () {
            finish(context);
          },
          child: Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.close, color: Colors.black)),
        ),
        Container(
          width: 45,
          height: 45,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: t5SkyBlue),
          child: const Icon(Icons.done, color: t5White),
        ),
        const SizedBox(height: 24),
        text(them5LblFingerprintAuthentication,
            textColor: Colors.black,
            fontFamily: fontBold,
            fontSize: textSizeNormal),
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, bottom: 16, top: 10),
          child: text(t5NoteUserFingerprint,
              textColor: t5TextColorSecondary,
              fontFamily: fontMedium,
              fontSize: textSizeMedium,
              maxLine: 2,
              isCentered: true),
        ),
        const SizedBox(height: 30),
        GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(t5Fingerprint,
                width: width / 4, color: t5ColorPrimary)),
        const SizedBox(height: 50),
      ],
    ),
  );
}
