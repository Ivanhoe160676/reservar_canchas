// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:reserva_canchas/app/helpers/agregar_canchas.dart';
import 'package:reserva_canchas/app/models/canchas_model.dart';
import 'package:reserva_canchas/app/views/global/constants/app_colors.dart';
import 'package:reserva_canchas/app/views/global/constants/app_constant.dart';
import 'package:reserva_canchas/app/views/global/constants/app_images.dart';
import 'package:reserva_canchas/app/views/global/constants/app_strings.dart';
import 'package:reserva_canchas/app/views/global/widgets/app_widget.dart';
import 'package:reserva_canchas/routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(t5Login, width: width / 2.5, height: width / 2.5),
              text(t5HeadingLogin,
                  textColor: Colors.black,
                  fontFamily: fontBold,
                  fontSize: 22.0),
              Container(
                margin: const EdgeInsets.all(24),
                decoration: boxDecoration(
                    bgColor: context.scaffoldBackgroundColor,
                    showShadow: true,
                    radius: 4),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    const SizedBox(height: 10),
                    EditText(
                      hint: t5HintPhoneNo,
                      isPassword: false,
                    ),
                    const SizedBox(height: 16),
                    EditText(hint: t5HintPassword, isSecure: true),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        toasty(context, t5ForgotPswd);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, right: 10),
                        child: text(t5ForgotPswd,
                            textColor: t5ColorPrimary,
                            fontSize: textSizeLargeMedium,
                            fontFamily: fontSemibold),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              await saveCanchasToStorage(canchas);
                              Get.toNamed(AppRoutes.home);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 16),
                              alignment: Alignment.center,
                              height: width / 8,
                              decoration: boxDecoration(
                                  bgColor: appDarkParrotGreen, radius: 8),
                              child: text(t5SignIn,
                                  textColor: t5White, isCentered: true),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.home);
                            },
                            child: SvgPicture.asset(t5Fingerprint,
                                width: width / 8.2, color: t5ViewColor))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
