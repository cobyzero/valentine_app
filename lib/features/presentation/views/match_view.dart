import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:valentine_app/core/barrels/packages_barrel.dart';
import 'package:valentine_app/core/barrels/util_barrel.dart';
import 'package:valentine_app/core/barrels/widget_barrel.dart';
import 'package:valentine_app/core/router/router_def.dart';
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
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                  ).only(left: 5.w),
                  Texts.bold(
                    "Recuerdos",
                    fontSize: 20,
                  ),
                  InkWell(
                    onTap: () => context.go(RouterDef.dateRoute),
                    child: Hero(
                      tag: "love-tag2",
                      child: Lottie.asset(
                        heartMainAnimation,
                        width: 20.w,
                        height: 20.w,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50.h,
                margin: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 2.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(imageDemo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WidgetAnimatedButton(
                    animation: likeAnimation,
                    onTap: () {},
                  ),
                  WidgetAnimatedButton(
                    animation: notLikeAnimation,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
