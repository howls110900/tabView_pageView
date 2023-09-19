import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabView extends StatefulWidget{
  const TabView({super.key});

  @override
  State<StatefulWidget> createState() => _TabView ();

}

tabDetail({required String text, required IconData icon}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(text),
      Icon(icon),
    ],
  );
}

class _TabView extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            bottom: const TabBar(
                tabs: [
                  Tab(text: 'TAB 1'),
                  Tab(text: 'TAB 2'),
                  Tab(text: 'TAB 3'),
                ],),
          ),
          body: TabBarView(
            children: [
              tabDetail(text: 'TAB 1', icon: Icons.cabin),
              tabDetail(text: 'TAB 2', icon: Icons.table_chart),
              tabDetail(text: 'TAB 3', icon: Icons.co_present)
            ],
          ),
        ));
  }
  
}