import 'package:flutter/material.dart';
import 'package:flutter_develop_template/src/sample_feature/sample_item.dart';
import 'package:go_router/go_router.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

/// Displays detailed information about a SampleItem.

class TodoType {
  String text;

  TodoType({required this.text});
}

class SampleItemDetailsView extends StatefulWidget {
  const SampleItemDetailsView(
      {super.key, this.title, this.item = const SampleItem(0)});
  final String? title;
  final SampleItem item;
  @override
  SampleItemDetailsViewState createState() => SampleItemDetailsViewState();
}

class SampleItemDetailsViewState extends State<SampleItemDetailsView> {
  final List<TodoType> todoList = [];
  // SampleItemDetailsViewState({super.key});
  String input = '';
  TextEditingController nameController = TextEditingController();
  void _addList() {
    nameController.clear();
    setState(() {
      todoList.add(TodoType(text: input));
    });
  }

  void _onChange(text) {
    setState(() {
      input = text;
    });
  }

  @override
  void initState() {
    super.initState();
    print(widget.item.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  context.go('/');
                }),
            Text('详情页${widget.item.id}'),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.go('/settings');
              },
            ),
          ],
        )),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: TDInput(
                        controller: nameController,
                        // leftLabel: '标签文字',
                        // controller: controller[0],
                        backgroundColor:
                            const Color.fromARGB(255, 131, 255, 255),
                        hintText: '请输入文字',
                        onChanged: _onChange
                        // onClearTap: () {
                        //   controller[0].clear();
                        //   setState(() {});
                        // },
                        )),
                TDButton(
                  width: 130,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  onTap: _addList,
                  child: Text('添加1'),
                )
              ],
            ),
            Expanded(
                flex: 1,
                child: Container(
                  key: Key('box'),
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (context, index) {
                      final item = todoList[index];
                      return Container(
                          margin: EdgeInsets.all(8),
                          width: 300,
                          height: 100,
                          color: Colors.pink,
                          child: Text(item.text));
                    },
                  ),
                ))
          ],
        ));
  }
}
