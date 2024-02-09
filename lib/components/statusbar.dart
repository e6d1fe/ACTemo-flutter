import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  final bool? isDone;

  const StatusBar({this.isDone, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 176.6,
      height: 5.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isDone! ? const Color(0xff4088f0) : const Color(0xffd7e3ff),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
