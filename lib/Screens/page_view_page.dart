import 'package:bai_tap_buoi_12/Screens/tab_view_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page_View extends StatefulWidget {
  const Page_View({super.key});

  @override
  State<StatefulWidget> createState() => _Page_View();
}

class _Page_View extends State<Page_View> {
  PageController controller = PageController();
  @override
  void initState(){
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller ,
      children: const [
        TabView(),
        PageChild(text: 'SencondPage'),
        PageChild(text: 'ThirdPage'),
        PageChild(text: 'FourthPage')
      ],
    );
  }
}

class PageChild extends StatelessWidget {
  final String text;
  const PageChild({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}
