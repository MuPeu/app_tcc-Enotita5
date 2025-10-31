import 'package:flutter/material.dart';
import 'dart:math';

class ResponsiveScale extends StatelessWidget {
  final Widget child;
  final double baseWidth;

  const ResponsiveScale({
    super.key,
    required this.child,
    this.baseWidth = 375,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final screenWidth = mq.size.width;
    final scale = screenWidth / baseWidth;
    final clampedScale = max(0.7, min(scale, 1.4));

    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Transform.scale(
            scale: clampedScale,
            alignment: Alignment.topCenter,
            child: SizedBox.expand(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: baseWidth,
                  maxHeight: constraints.maxHeight,
                ),
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}