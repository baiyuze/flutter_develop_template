import 'package:flutter_develop_template/src/components/add/add.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  FooterState createState() => FooterState();
}

class FooterState extends State<Footer> {
  // Footer({super.key});
  String _active = "home";
  Color defaultColor = Color(0XFF9E9E9E);
  Color activeColor = Color(0XFF1CD17D);

  void onChangeSelect(String val) {
    setState(() {
      _active = val;
    });
  }

  List<Map<String, dynamic>> menuList = [
    {"name": "首页", "key": "home", "icon": Icons.home},
    {"name": "图表", "key": "chart", "icon": Icons.bar_chart},
    {"name": "日历", "key": "date", "icon": Icons.date_range},
    {"name": "我的", "key": "my", "icon": Icons.person},
  ];

  final _keys = ["chart", 'date'];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0XFFf3f5fc),
      padding: EdgeInsets.all(0),
      height: 60,
      child: Container(
          height: 60,
          width: double.infinity,
          color: Color(0XFFf3f5fc),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: menuList.map((item) {
                    Color currentColor =
                        _active == item["key"] ? activeColor : defaultColor;
                    Offset offset = Offset(0, 0);
                    switch (item["key"]) {
                      case "chart":
                        offset = Offset(-20, 0);
                        break;
                      case "date":
                        offset = Offset(20, 0);
                        break;
                      default:
                    }

                    return Expanded(
                        child: Transform.translate(
                      offset: offset,
                      child: SizedBox(
                        // width: 58,
                        height: double.infinity,
                        child: InkResponse(
                          onTap: () {
                            onChangeSelect(item["key"]);
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(item['icon'], color: currentColor),
                                Text(item["name"]!,
                                    style: TextStyle(color: currentColor))
                              ]),
                        ),
                      ),
                    ));
                  }).toList()),
              Positioned(
                  width: 59,
                  height: 59,
                  left: (MediaQuery.of(context).size.width - 20) / 2 - 59 / 2,
                  top: -10,
                  child: Add(
                    key: Key("add"),
                  )),
            ],
          )),
    );
    // onTap: (index) {
    //   //Handle button tap
    // },
    // );
  }
}
