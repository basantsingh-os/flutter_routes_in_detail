import 'package:flutter/material.dart';
import 'package:router_flutter_detail/page_1.dart';

class Page2 extends StatelessWidget {
  static const String routeName = "/page2";
  final data;
  Page2({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page 2"),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
          Text(data??"No Data",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          FlatButton(
            child: Text("Go To Home Page"),
            onPressed: () => Navigator.pushNamed(context, Page1.routeName,
                    arguments: "this is some data on page 1"),)

        ],)
      )

    );
  }
}
