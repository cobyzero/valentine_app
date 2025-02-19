import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:valentine_app/core/barrels/packages_barrel.dart';
import 'package:valentine_app/core/barrels/util_barrel.dart';
import 'package:valentine_app/core/barrels/widget_barrel.dart';
import 'package:valentine_app/core/utils/const.dart';
import 'package:valentine_app/core/utils/date_util.dart';

class DateView extends StatelessWidget {
  const DateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetContainerGradient(
        child: SafeArea(
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: BackButton(),
                ),
                Lottie.asset(
                  calendarActiveAnimation,
                  width: 30.w,
                  height: 30.w,
                  fit: BoxFit.cover,
                  animate: true,
                ).only(bottom: 4.h),
                Column(
                  children: [
                    Texts.bold(
                      getTextDate(),
                      fontSize: 22,
                    ).only(bottom: 2.h),
                    Texts.bold(
                      "contigo mi amor",
                      fontSize: 22,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
