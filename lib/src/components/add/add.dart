import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:spring/spring.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  bool _isTapped = false;

  void _onTap() {
    setState(() {
      _isTapped = true;
    });
    print('tapped');
  }

  // final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 59,
        height: 59,
        child: Spring.bubbleButton(
            onTap: _onTap,
            animDuration: Duration(milliseconds: 100), //def=500m mil
            bubbleStart: _isTapped ? .9 : 1, // 仅当被点击时才缩放
            bubbleEnd: _isTapped ? 1 : 1, // 避免非点击时触发动画
            animStatus: (AnimStatus status) {
              if (status == AnimStatus.completed) {
                setState(() {
                  _isTapped = false;
                });
              }
            },
            curve: Curves.linear, //Curves.elasticOut
            delay: Duration(milliseconds: 0), //def=0
            child: Container(
                width: 59,
                height: 59,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      transform: const GradientRotation(90 * (pi / 180)),
                      colors: const [
                        Color(0xFF43FFE0),
                        Color(0xFF62FF6D),
                      ],
                    )),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Color(0XFFFFFFFF),
                    size: 30,
                  ),
                ))));
  }
}
