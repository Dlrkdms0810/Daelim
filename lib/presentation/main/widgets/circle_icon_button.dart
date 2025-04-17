import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const CircleIconButton({super.key, required this.icon, required this.onTap});

  Widget secondWay() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF081854),
        ),
        child: Icon(icon, color: Colors.white, size: 35),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return secondWay();
  }
}
