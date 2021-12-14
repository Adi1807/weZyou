import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    required this.count,
    required this.currentIndex,
    required this.activeColor,
    required this.backgroundColor,
  }) : super();

  final int count;
  final int currentIndex;
  final Color activeColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      runSpacing: 4,
      alignment: WrapAlignment.center,
      children: List.generate(
        count,
        (index) {
          return CircleAvatar(
            radius: 3,
            backgroundColor:
                currentIndex == index ? activeColor : backgroundColor,
          );
        },
      ),
    );
  }
}
