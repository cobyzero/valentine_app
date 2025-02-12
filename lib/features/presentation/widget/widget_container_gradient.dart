import 'package:flutter/material.dart';
import 'package:valentine_app/core/barrels/util_barrel.dart';

class WidgetContainerGradient extends StatelessWidget {
  const WidgetContainerGradient({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Palette.background,
            Palette.background2,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
