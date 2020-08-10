import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: isActive ? 15 : 9,
      width: isActive ? 15 : 9,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
