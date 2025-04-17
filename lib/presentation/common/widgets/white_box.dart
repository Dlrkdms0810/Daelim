import 'package:flutter/material.dart';

class WhiteBox extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget child;

  const WhiteBox({super.key, required this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(padding: padding, decoration: BoxDecoration(child: child));
  }
}
