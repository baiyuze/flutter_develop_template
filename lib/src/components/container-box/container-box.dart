import 'dart:ui';

import 'package:flutter_develop_template/src/components/header/header.dart';
import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  const ContainerBox({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.fill),
        ),
        child: child);
  }
}
