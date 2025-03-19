import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'sample_item.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import '../components/demo.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {
  const SampleItemListView({super.key, required this.items});

  // 添加工厂构造函数来生成1000个项目
  factory SampleItemListView.withThousandItems() {
    return SampleItemListView(
      items: List.generate(1000, (index) => SampleItem(index)),
    );
  }

  final List<SampleItem> items;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        int selectedIndex = 0;
        return Column(
          children: [
            Expanded(
              child: IndexedStack(
                index: selectedIndex,
                children: [
                  // Home tab
                  AnimationLimiter(
                    child: ListView.builder(
                      restorationId: 'sampleItemListView',
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = items[index];
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: SlideAnimation(
                            verticalOffset: 50.0,
                            child: FadeInAnimation(
                                child: ListTile(
                                    title: Text('SampleItem $index'),
                                    leading: const CircleAvatar(
                                      foregroundImage: AssetImage(
                                          'assets/images/flutter_logo.png'),
                                    ),
                                    trailing: TDButton(
                                        text: '填充按钮',
                                        size: TDButtonSize.small,
                                        type: TDButtonType.fill,
                                        shape: TDButtonShape.rectangle,
                                        theme: TDButtonTheme.primary,
                                        onTap: () {
                                          context.go('/home');
                                        }),
                                    subtitle: Text('Subtitle ${item.id}'),
                                    onTap: () {
                                      context.go('/sample_item', extra: item);
                                    })),
                          ),
                        );
                      },
                    ),
                  ),

                  // Business tab
                  const Center(
                    child: Text('Business Page Content'),
                  ),

                  // School tab
                  const Center(
                    child: Text('School Page Content'),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
