import 'package:flutter/material.dart';
import 'package:flutter_develop_template/src/models/counter.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Consumer<Counter>(
          builder: (providerContext, counter, child) {
            return SizedBox(
              width: double.infinity,
              height: 100,
              child: Column(
                children: [
                  TDButton(
                      onTap: counter.increment, text: '值：${counter.count}'),
                  TDButton(
                    onTap: () {
                      context.go('/');
                    },
                    text: '去首页1',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
