import 'package:flutter/material.dart';
import 'package:practice_get_application/utilis/screen_size.dart';

class AppContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final Decoration? decoration;
  final Color? color;
  final Widget? child;

  const AppContainer({
    super.key,
    this.height,
    this.width,
    this.radius,
    this.color,
    this.child,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? ScreenSize.height(context) * 0.4,
      width: width ?? ScreenSize.width(context) * 0.4,
      decoration:
          decoration ??
          BoxDecoration(
            color: color ?? Colors.cyanAccent,
            borderRadius:
                radius != null
                    ? BorderRadius.circular(radius!)
                    : BorderRadius.zero,
          ),
      child: child,
    );
  }
}
