import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:valentine_app/core/barrels/packages_barrel.dart';
import 'package:valentine_app/core/barrels/util_barrel.dart';
import 'package:valentine_app/core/barrels/widget_barrel.dart';
import 'package:valentine_app/core/router/router_def.dart';
import 'package:valentine_app/core/utils/const.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetContainerGradient(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              LottieBuilder.asset(
                heartBackgroundAnimation,
                width: 100.w,
                height: 100.h,
                repeat: true,
                reverse: true,
              ),
              Hero(
                tag: "love-tag",
                child: LottieBuilder.asset(
                  heartMainAnimation,
                  width: 100.w,
                  height: 50.h,
                  repeat: true,
                  reverse: true,
                ),
              ),
              Hero(
                tag: "love-tag2",
                child: LottieBuilder.asset(
                  heartMainAnimation,
                  width: 100.w,
                  height: 50.h,
                  repeat: true,
                  reverse: true,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Texts.bold(
                    "¿Quieres ser mi San Valentin?",
                    fontSize: 24,
                    fontFamily: "Peachi",
                    color: Palette.red,
                    alignment: TextAlign.center,
                  ).only(bottom: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WidgetMiniButton(
                        text: "Si!",
                        onTap: () => context.go(RouterDef.matchRoute),
                      ),
                      WidgetMiniButton(
                        text: "No :(",
                        backgroundColor: Palette.white,
                        textColor: Palette.black,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Texts.bold(
                                  "Porque :(",
                                  fontSize: 20,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  )
                ],
              ).only(bottom: 4.h)
            ],
          ),
        ),
      ),
    );
  }
}
