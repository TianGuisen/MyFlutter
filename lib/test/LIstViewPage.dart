import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LIstViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LIstViewPage();
  }
}

class _LIstViewPage extends State<LIstViewPage> {
  var list = List<String>();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list.length,
      itemBuilder: (context, index) {
        ListTile(title: Text(list[index]));
      },
      separatorBuilder: (context, index) => Divider(height: .0),
    );
  }

  void _loadData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      list.insertAll(list.length - 1,
              //每次生成20个单词
              generateWordPairs().take(30).map((e) => e.asPascalCase).toList()
      );
      setState(() {
        //重新构建列表
      });
    });
    
  }
}
