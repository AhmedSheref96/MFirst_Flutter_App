import 'package:english_words/english_words.dart';
import 'package:first_flutter_app/ui/secound_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<WordPair> dataList = [];
    List<String> data = ["test1", "test2", "test3"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppBar(),
        drawer: Drawer(
          child: _createListViewItems(context, data),
        ),
        body: _createListViewItemsFromApi(dataList),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: const Text("My First Flutter App"),
    backgroundColor: Colors.blue,
    elevation: 5,
  );
}

Widget _createListViewItems(BuildContext context, List<String> list) {
  var listWid = <Widget>[];
  for (var element in list) {
    listWid.add(ListTile(
      title: Text(element),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext cnx) => SecondPage()),
        );
      },
    ));
  }
  return ListView(
    children: listWid,
  );
}

Widget _createListViewItemsFromApi(List<WordPair> dataList) {
  return ListView.builder(itemBuilder: (context, i) {
    final index = i ~/ 2;
    if (index >= dataList.length) {
      dataList.addAll(generateWordPairs().take(20));
    }
    return ListTile(
      title: Text(dataList[index].first),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext cnx) => SecondPage()),
        );
      },
    );
  });
}
