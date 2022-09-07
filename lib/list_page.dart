
import 'package:flutter/material.dart';
import 'package:test10/showcaseview.dart';

class ListPage extends StatefulWidget {

  final GlobalKey globalKey3;
  final GlobalKey globalKey4;

  const ListPage({Key? key, required this.globalKey3, required this.globalKey4}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ShowCaseView(
               globalKey: widget.globalKey3,
               title: "btn 1",
               description: "this is for button 1",
               shapeBorder: null,
               child: ElevatedButton(onPressed: (){}, child: Text("btn1"))),


           ShowCaseView(
               globalKey: widget.globalKey4,
               title: "btn 2",
               description: "this is for button 2",
               shapeBorder: null,
               child: ElevatedButton(onPressed: (){}, child: Text("btn2"))),
         ],
       ),
    );
  }
}
