import 'package:flutter/material.dart';
import 'package:flutter_develop_template/src/models/counter.dart';
import 'package:flutter_develop_template/src/router.dart';
import 'package:flutter_develop_template/src/views/home/home_page.dart';
import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';
import 'package:provider/provider.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();
  return runApp(ChangeNotifierProvider(
    ///  返回一个实现 ChangeNotifier 接口的对象
    create: (_) => Counter(),
    child: AppWidget(settingsController: settingsController),
  ));

  // return runApp(ModularApp(
  //     module: AppModule(controller: settingsController),
  //     child: AppWidget(settingsController: settingsController)));
}


// class AppWidget extends StatelessWidget {
//   Widget build(BuildContext context) {
//     Modular.setInitialRoute('/page1');
//
//     return MaterialApp.router(
//       title: 'My Smart App',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       routerConfig: Modular.routerConfig,
//     );
//   }
// }


// class HomePage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     final leading = SizedBox(
//       width: MediaQuery.of(context).size.width * 0.3,
//       child: Column(
//         children: [
//           ListTile(
//             title: Text('Page 1'),
//             onTap: () => Modular.to.navigate('/page1'),
//           ),
//           ListTile(
//             title: Text('Page 2'),
//             onTap: () => Modular.to.navigate('/page2'),
//           ),
//           ListTile(
//             title: Text('Page 3'),
//             onTap: () => Modular.to.navigate('/page3'),
//           ),
//         ],
//       ),
//     );

//     return Scaffold(
//       appBar: AppBar(title: Text('Home Page')),
//       body: Row(
//         children: [
//           leading,
//           Container(width: 2, color: Colors.black45),
//           Expanded(child: RouterOutlet()),
//         ],
//       ),
//     );
//   }
// }

// class InternalPage extends StatelessWidget {
//   final String title;
//   final Color color;
//   const InternalPage({Key? key, required this.title, required this.color}) : super(key: key);

//   Widget build(BuildContext context) {
//     return Material(
//       color: color,
//       child: Center(child: Column(
//         children: [
//           ElevatedButton(
//             onPressed: () => Modular.to.navigate('/second'),
//             child: Text('Navigate to Second Page'),
//           ),
//           Center(
//             child: Text(title),
//           )
//         ],
//       )),
//     );
//   }
// }
// class SecondPage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Second Page')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => Modular.to.navigate('/'),
//           child: Text('Back to Home'),
//         ),
//       ),
//     );
//   }
// }