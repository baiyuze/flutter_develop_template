import 'package:flutter_develop_template/src/components/container-box/container-box.dart';
import 'package:flutter_develop_template/src/components/footer/footer.dart';
import 'package:flutter_develop_template/src/components/header/header.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ContainerBox(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: Header(key: Key('header')),
      body: Container(
          width: double.infinity, height: double.infinity, child: child),
      bottomNavigationBar: Footer(),
    ));
  }
}
