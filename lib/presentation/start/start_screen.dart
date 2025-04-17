import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/router/app_route.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final _title = 'Get Started with\nTracking Your Health!';
  final _desc =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';
  TextStyle get _titleStyle =>
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

  TextStyle get _descStyle => TextStyle(color: Color(0xFFC6C3F9), fontSize: 15);

  Widget _buildAppName() {
    return Text(
      'BMI Calculator',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      _title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildDescription() {
    return Text(
      _desc,
      style: TextStyle(color: Color(0xFFC6C3f9), fontSize: 15),
    );
  }

  Widget _buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: '${_title}dsafn;dsfdsiasd', style: _titleStyle),
          TextSpan(text: '\n'),
          WidgetSpan(child: SizedBox(height: 30)),
          TextSpan(text: _desc, style: _descStyle),
        ],
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.main.toPath),
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xFF081854)),
        child: Text('Get Started'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildAppName()],
            ),
          ),
        ),
      ),
    );
  }
}
