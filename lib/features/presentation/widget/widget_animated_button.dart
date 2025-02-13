import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:valentine_app/core/barrels/packages_barrel.dart';

class WidgetAnimatedButton extends StatefulWidget {
  const WidgetAnimatedButton({
    super.key,
    required this.animation,
    required this.onTap,
  });
  final String animation;
  final Function() onTap;
  @override
  State<WidgetAnimatedButton> createState() => _WidgetAnimatedButtonState();
}

class _WidgetAnimatedButtonState extends State<WidgetAnimatedButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    controller.addListener(() {
      setState(() {
        if (controller.isCompleted) {
          widget.onTap();
          controller.reverse();
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.forward();
      },
      child: Lottie.asset(
        widget.animation,
        width: 30.w,
        controller: controller,
        height: 30.w,
        fit: BoxFit.cover,
        animate: false,
      ),
    );
  }
}
