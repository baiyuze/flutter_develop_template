import 'package:flutter_develop_template/src/components/layout/layout.dart';
import 'package:flutter_develop_template/src/sample_feature/sample_item.dart';
import 'package:flutter_develop_template/src/sample_feature/sample_item_details_view.dart';
import 'package:flutter_develop_template/src/sample_feature/sample_item_list_view.dart';
import 'package:flutter_develop_template/src/settings/settings_controller.dart';
import 'package:flutter_develop_template/src/views/home/home_page.dart';
import 'package:flutter/rendering.dart';
import 'settings/settings_view.dart';

import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter({required this.controller});

  final SettingsController controller;

  getRouter() => GoRouter(
        initialLocation: '/',
        routes: [
          // GoRoute(
          //     path: '/',
          //     // builder: (context, state) => SampleItemListView.withThousandItems(),
          //     builder: (context, state) => Layout()),
          ShellRoute(
              // navigatorKey: Key('value'),

              builder: (context, state, child) {
                return Layout(child: child);
              },
              routes: [
                GoRoute(
                  path: '/',
                  builder: (context, state) =>
                      SampleItemListView.withThousandItems(),
                )
              ]),
          GoRoute(
            path: '/home',
            builder: (context, state) => HomePage(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => SettingsView(controller: controller),
          ),
          GoRoute(
              path: '/sample_item',
              builder: (context, state) {
                final item = state.extra as SampleItem;
                return SampleItemDetailsView(item: item);
              }),
        ],
      );
}
