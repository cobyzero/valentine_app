import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:valentine_app/core/utils/palette.dart';

class Texts extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign alignment;
  final FontWeight fontWeight;
  final bool underline;
  final Color color;
  final double height;
  final int maxLines;
  final EdgeInsetsGeometry? padding;
  final TextOverflow textOverflow;
  final double? letterSpacing;
  final void Function()? onTap;
  final TextStyle? style;
  final String? fontFamily;
  const Texts(
    this.text, {
    super.key,
    this.fontSize = 14,
    required this.fontWeight,
    this.underline = false,
    this.alignment = TextAlign.left,
    this.height = 1,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    required this.color,
    this.padding,
    this.style,
    this.letterSpacing,
    this.onTap,
    this.fontFamily,
  });

  const Texts.bold(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 14,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.letterSpacing,
    this.style,
    this.onTap,
    this.fontFamily,
  }) : fontWeight = FontWeight.bold;

  const Texts.w400(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 14,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.letterSpacing,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
    this.onTap,
    this.fontFamily,
  }) : fontWeight = FontWeight.w400;

  const Texts.w500(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 14,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.letterSpacing,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.color = Palette.black,
    this.padding,
    this.style,
    this.onTap,
    this.fontFamily,
  }) : fontWeight = FontWeight.w500;
  const Texts.w600(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 14,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.letterSpacing,
    this.style,
    this.onTap,
    this.fontFamily,
  }) : fontWeight = FontWeight.w600;

  const Texts.w700(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 14,
    this.letterSpacing,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
    this.onTap,
    this.fontFamily,
  }) : fontWeight = FontWeight.w700;

  const Texts.normal(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 14,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.letterSpacing,
    this.textOverflow = TextOverflow.clip,
    this.padding,
    this.style,
    this.onTap,
    this.fontFamily,
  }) : fontWeight = FontWeight.normal;

  const Texts.w800(
    this.text, {
    super.key,
    this.height = 1,
    this.fontSize = 14,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.letterSpacing,
    this.padding,
    this.style,
    this.fontFamily,
    this.onTap,
  }) : fontWeight = FontWeight.w800;

  const Texts.w900(
    this.text, {
    super.key,
    this.height = 1,
    this.letterSpacing,
    this.fontSize = 14,
    this.alignment = TextAlign.left,
    this.underline = false,
    this.color = Palette.black,
    this.maxLines = 30,
    this.textOverflow = TextOverflow.clip,
    this.style,
    this.fontFamily,
    this.padding,
    this.onTap,
  }) : fontWeight = FontWeight.w900;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          textAlign: alignment,
          style: (style ?? const TextStyle()).copyWith(
            fontFamily: fontFamily,
            color: color,
            fontSize: fontSize.sp,
            height: height,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            decoration:
                underline ? TextDecoration.underline : TextDecoration.none,
          ),
          maxLines: maxLines,
          overflow: textOverflow,
          softWrap: true,
        ),
      ),
    );
  }
}
