import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:daelim_2025/presentation/main/widgets/in_de_container.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _age = 0;
  int _weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          child: Column(
            spacing: 25,
            children: [
              SizedBox(height: 35),
              Text('BMI CALCULATOR', style: TextStyle()),
              Row(
                spacing: 20,
                children: [
                  Expanded(
                    child: InDeContainer(
                      title: 'Age',
                      value: _age,
                      onMinus: () {
                        if (_age == 0) return;
                        setState(() => _age--);
                      },
                      onPlus: () {
                        setState(() => _age++);
                      },
                    ),
                  ),
                  Expanded(
                    child: InDeContainer(
                      title: 'Weight (KG)',
                      value: _weight,
                      onMinus: () {
                        if (_weight == 0) return;
                        setState(() => _weight--);
                      },
                      onPlus: () {
                        setState(() => _weight++);
                      },
                    ),
                  ),
                ],
              ),
              HeightBox(),
              WhiteBox(padding: EdgeInsets.all(18), child: SizedBox.shrink()),
              WhiteBox(padding: EdgeInsets.all(25), child: SizedBox.shrink()),
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Calculate BMI'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
