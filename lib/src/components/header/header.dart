import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent, // 1. 设置基础背景色
      scrolledUnderElevation: 0, // 3. 滚动时显示阴影高度
      // shadowColor: Colors.black.withOpacity(0.3), // 4. 自定义阴影颜色
      // surfaceTintColor: Colors.transparent,
      title: SizedBox(
          width: double.infinity,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red[100],
              ),
              // color: Colors.red[100],
              margin: const EdgeInsets.only(right: 10),
            ),
            Text(
              'MY HOME',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff212121),
              ),
            ),
          ])),
      // IconButton(
      //     icon: const Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     }),
      // Text('Header'
      //     // '详情页${widget.item.id}'
      //     )
    );
  }
}
