import 'package:flutter/material.dart';

import '../routing/base_routing.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> data = ["test1", "test2", "test3"];
    return Drawer(
      backgroundColor: Colors.blue,
      child: _createListViewItems(context, data),
    );
  }

  Widget _createListViewItems(BuildContext context, List<String> list) {
    var listWid = <Widget>[];
    for (var element in list) {
      listWid.add(ListTile(
        title: Text(element),
        onTap: () {
          Navigator.of(context).pushNamed(secondPageRoute);
        },
      ));
    }
    return ListView(
      children: listWid,
    );
  }
}
