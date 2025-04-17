import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _HeightBoxState extends State<HeightBox> {
  int _height = 0;

  void _decreaseHeight() {
    setState(() {
      _height--;
    });
  }

  void _increaseHeight() {
    setState(() {
      _height++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WhiteBox(padding: EdgeInsets.all(18), child: Column(children: []));
  }
}
