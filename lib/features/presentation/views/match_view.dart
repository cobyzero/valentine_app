import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:valentine_app/core/barrels/packages_barrel.dart';
import 'package:valentine_app/core/barrels/util_barrel.dart';
import 'package:valentine_app/core/barrels/widget_barrel.dart';
import 'package:valentine_app/core/utils/const.dart';

class MatchView extends StatelessWidget {
  const MatchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetContainerGradient(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Hero(
                    tag: "love-tag",
                    child: Lottie.asset(
                      heartMainAnimation,
                      width: 20.w,
                      height: 20.w,
                    ),
                  ),
                  Texts.bold(
                    "Recuerdos",
                    fontSize: 20,
                  ),
                  Hero(
                    tag: "love-tag2",
                    child: Lottie.asset(
                      heartMainAnimation,
                      width: 20.w,
                      height: 20.w,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
