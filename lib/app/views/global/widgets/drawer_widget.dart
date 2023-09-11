//crear draqwer
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserva_canchas/app/views/global/constants/app_colors.dart';
import 'package:reserva_canchas/app/views/global/constants/app_constant.dart';
import 'package:reserva_canchas/app/views/global/constants/app_strings.dart';
import 'package:reserva_canchas/app/views/global/widgets/app_widget.dart';
import 'package:reserva_canchas/routes/app_routes.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.amberAccent,
                  height: 260,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(16),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  'https://assets.iqonic.design/old-themeforest-images/prokit/images/theme5/t5_profile_7.jpeg',
                                  fit: BoxFit.cover,
                                  height: 100,
                                ),
                              )),
                          text(t5UserName,
                              textColor: t5TextColorPrimary,
                              fontFamily: fontMedium,
                              fontSize: textSizeNormal),
                          text(t5UserEmail,
                              textColor: t5TextColorPrimary,
                              fontFamily: fontMedium,
                              fontSize: textSizeMedium),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.home);
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: const Icon(Icons.home)),
                            text(t5LblHome,
                                textColor: t5TextColorPrimary,
                                fontFamily: fontMedium,
                                fontSize: textSizeLargeMedium),
                          ],
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(height: 10),
                      divider(),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.home);
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: const Icon(Icons.filter_b_and_w)),
                            text(t5LblCanchas,
                                textColor: t5TextColorPrimary,
                                fontFamily: fontMedium,
                                fontSize: textSizeLargeMedium),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      divider(),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.home);
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: const Icon(Icons.account_box)),
                            text(t5LblProfile,
                                textColor: t5TextColorPrimary,
                                fontFamily: fontMedium,
                                fontSize: textSizeLargeMedium),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      divider(),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.home);
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: const Icon(
                                    Icons.notification_important_rounded)),
                            text(t5LblNotification,
                                textColor: t5TextColorPrimary,
                                fontFamily: fontMedium,
                                fontSize: textSizeLargeMedium),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      divider(),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.settings);
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: const Icon(Icons.settings)),
                            text(t5LblSettings,
                                textColor: t5TextColorPrimary,
                                fontFamily: fontMedium,
                                fontSize: textSizeLargeMedium),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      divider(),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.help);
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: const Icon(Icons.help)),
                            text(t5LblHelp,
                                textColor: t5TextColorPrimary,
                                fontFamily: fontMedium,
                                fontSize: textSizeLargeMedium),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      divider(),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.about);
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: const Icon(Icons.info)),
                            text(t5LblAbout,
                                textColor: t5TextColorPrimary,
                                fontFamily: fontMedium,
                                fontSize: textSizeLargeMedium),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      divider(),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.login);
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: const Icon(Icons.logout)),
                            text(t5LblLogout,
                                textColor: t5TextColorPrimary,
                                fontFamily: fontMedium,
                                fontSize: textSizeLargeMedium),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      divider(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
