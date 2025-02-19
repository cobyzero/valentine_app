import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:valentine_app/core/barrels/packages_barrel.dart';
import 'package:valentine_app/core/barrels/util_barrel.dart';
import 'package:valentine_app/core/barrels/widget_barrel.dart';
import 'package:valentine_app/core/router/router_def.dart';
import 'package:valentine_app/core/utils/const.dart';

class MatchView extends StatefulWidget {
  const MatchView({super.key});

  @override
  State<MatchView> createState() => _MatchViewState();
}

class _MatchViewState extends State<MatchView> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetContainerGradient(
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: LottieBuilder.asset(
                  heartBackgroundAnimation,
                  width: 100.w,
                  height: 50.h,
                  repeat: true,
                  reverse: true,
                ),
              ),
              Positioned(
                top: 0,
                child: LottieBuilder.asset(
                  heartBackgroundAnimation,
                  width: 100.w,
                  height: 50.h,
                  repeat: true,
                  reverse: true,
                ),
              ),
              Column(
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
                        image: AssetImage("assets/images/$index.JPG"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WidgetAnimatedButton(
                        animation: likeAnimation,
                        onTap: likeAction,
                      ),
                      WidgetAnimatedButton(
                        animation: notLikeAnimation,
                        onTap: notLikeAction,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void likeAction() {
    if (index < 16) {
      setState(() {
        index++;
      });
    } else {
      setState(() {
        index = 1;
      });
    }
  }

  void notLikeAction() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Texts.bold(
            "A!!!! ¿Estás segura de que no te gusta?",
            fontSize: 20,
          ),
        );
      },
    );
  }
}
