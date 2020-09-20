import 'package:flutter/material.dart';
import 'package:router_flutter_detail/page_1.dart';

class Page3 extends StatelessWidget {
  static const String routeName = "/page3";
  final data;
  Page3({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unknown Page"),
      ),
      body:Center(
        child:Column(children:<Widget> [
          Text(data??"No Data"),
          FlatButton(
            child: Text("Go To Home page"),
            onPressed: () => Navigator.pushNamed(context, Page1.routeName,
                    arguments: "this is some data on home screen"),)

        ],)
      )

    );
  }
}
