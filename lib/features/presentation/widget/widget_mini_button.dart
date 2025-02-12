import 'package:flutter/material.dart';
import 'package:valentine_app/core/barrels/packages_barrel.dart';
import 'package:valentine_app/core/barrels/util_barrel.dart';
import 'package:valentine_app/core/router/router_def.dart';

class WidgetMiniButton extends StatelessWidget {
  const WidgetMiniButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
  });
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go(RouterDef.matchRoute),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 1.w,
          vertical: 2.h,
        ),
        width: 30.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor ?? Palette.red,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Texts.bold(
          text,
          fontSize: 20,
          color: textColor ?? Palette.white,
        ),
      ),
    );
  }
}
