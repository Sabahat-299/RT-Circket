import 'package:flutter/material.dart';

class GradientFloatingActionButton extends StatelessWidget {
  final Gradient gradient;
  final double size;
  final Widget child;
  final VoidCallback onPressed;

  const GradientFloatingActionButton({
    required this.gradient,
    required this.size,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(size / 2),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(size / 2),
          onTap: onPressed,
          child: Container(
            width: size,
            height: size,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
