import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import '../routing/base_routing.dart';
import '../widgets/main_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<WordPair> dataList = [];
    return Scaffold(
      appBar: buildAppBar(),
      drawer: const MainDrawer(),
      body: _createListViewItemsFromApi(dataList),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Center(
        child: Text("My First Flutter App"),
      ),
      elevation: 5,
    );
  }

  Widget _createListViewItemsFromApi(List<WordPair> dataList) {
    return ListView.builder(itemBuilder: (context, i) {
      final index = i ~/ 2;
      if (index >= dataList.length) {
        dataList.addAll(generateWordPairs().take(10));
      }
      return ListTile(
        title: Text(dataList[index].first),
        leading: const CircleAvatar(
          backgroundColor: Colors.amberAccent,
          child: FlutterLogo(curve: Curves.bounceIn),
        ),
        trailing: const IconButton(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.redAccent,
          ),
          onPressed: null,
        ),
        subtitle: Text(dataList[index].second.toString()),
        onTap: () {
          Navigator.of(context).pushNamed(secondPageRoute);
        },
      );
    });
  }


}
