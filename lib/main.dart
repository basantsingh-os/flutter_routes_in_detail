import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:router_flutter_detail/page_1.dart';
import 'package:router_flutter_detail/page_2.dart';
import 'package:router_flutter_detail/page_3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        MyHomePage.routeName: (context) => MyHomePage(),
        
      },
      initialRoute: MyHomePage.routeName,
      onGenerateRoute: (RouteSettings settings) {
        var page;
        String routeName = settings.name;
        switch (routeName) {
          case Page1.routeName:
            page = Page1(data: settings.arguments);
            
            
            break;

            case Page2.routeName:
            page = Page2(data: settings.arguments);
            
            
            break;

            
        }
        return MaterialPageRoute(builder: (context) => page);
        
        
      },
      onUnknownRoute: (RouteSettings settings) {
        var page;
        
        
            page = Page3(data: settings.arguments);
        
        return MaterialPageRoute(builder: (context) => page);
      },
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String routeName = "/";
  String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _counter = 0;

  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Routes app in detail"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter is ",
              style: TextStyle(fontSize: 22),
            ),
            Text("$_counter",
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor)),
            FlatButton(
                child: Text("Go To Page 1",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.pushNamed(context, Page1.routeName,
                    arguments: "this some data")

                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1(data:"lol"))),
                )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: _increaseCounter,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
