import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});
  final text = "这就是无状态DMEO";
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        color: Color.fromARGB(10, 239, 3, 3),
        child: Text(text));
  }
}
