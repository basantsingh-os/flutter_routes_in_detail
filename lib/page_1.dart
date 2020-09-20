import 'package:flutter/material.dart';
import 'package:router_flutter_detail/page_2.dart';

class Page1 extends StatelessWidget {
  static const String routeName = "/page1";
  final data;
  Page1({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page 1"),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
          Text(data??"No Data",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          FlatButton(
            child: Text("Go To Page 2",style: TextStyle(fontSize:18),),
            onPressed: () => Navigator.pushNamed(context, Page2.routeName,
                    arguments: "This some data on page 2"))

        ],)
      )

    );
  }
}
