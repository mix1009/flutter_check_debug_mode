import 'package:debug_check/check_debug_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'isDebugMode = ${CheckDebugMode.isDebugMode}',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20),
            ClipRect(
              child: Banner(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey,
                ),
                message: 'EPIC',
                textDirection: TextDirection.ltr,
                location: BannerLocation.bottomEnd,
              ),
            )
          ],
        ),
      ),
    );
  }
}
