import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:test10/list_page.dart';
import 'package:test10/share_preference.dart';
import 'package:test10/showcaseview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final GlobalKey globalKeyOne = GlobalKey();
  final GlobalKey globalKeyTwo = GlobalKey();
  final GlobalKey globalKeyThree = GlobalKey();
  final GlobalKey globalKeyFour = GlobalKey();
  final GlobalKey globalKeyFive = GlobalKey();
  final GlobalKey globalKeySix = GlobalKey();


  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {

      bool? firstTimeOpening = SharePreference.getFirstTimeOpening();
      if(firstTimeOpening == true){
        ShowCaseWidget.of(context).startShowCase(
            [globalKeyOne,globalKeyTwo,globalKeyThree,globalKeyFour,globalKeyFive,globalKeySix]
        );

        SharePreference.setFirstTimeOpening(false);
      }

    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
        centerTitle: false,
        actions: [

          ShowCaseView(
              globalKey: globalKeyTwo,
              title: "setting",
              description: "this is for setting",
              shapeBorder: null,
              child:  IconButton(onPressed: () {}, icon: Icon(Icons.settings, color: Colors.red,)),

          ),



          ShowCaseView(
              globalKey: globalKeyOne,
              title: "message",
              description: "this is for message",
              shapeBorder: null,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.message, color: Colors.green,))),



          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListPage(globalKey3: globalKeyThree , globalKey4: globalKeyFour,)),


      bottomSheet: Container(
        height: 50,
        width: size.height,
        color: Colors.grey,
        child: Center(
          child: ShowCaseView(
              globalKey: globalKeyFive,
              title: "message",
              description: "this is for message",
              shapeBorder: null,
              child: ElevatedButton(onPressed: () {}, child: Text("btn1"))),
        ),
      ),

      floatingActionButton: ShowCaseView(
        globalKey: globalKeySix,
        title: "message",
        description: "click to enable show case in next opening",
        shapeBorder: null,
        child: FloatingActionButton(
          backgroundColor: Colors.red,
            child: Icon(Icons.add),
            onPressed: (){
              SharePreference.setFirstTimeOpening(true);
            }),
      ),

    );
  }
}
