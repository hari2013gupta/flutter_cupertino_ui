import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_hari_ui_test/home_new.dart';

bool get isIos => foundation.defaultTargetPlatform == TargetPlatform.iOS;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        barBackgroundColor: CupertinoColors.systemGrey5,
        primaryColor: Color(0xFFFF2D55),
      ),
      title: 'Flutter Demo',
      home: HomeNew(),
    );
  }
}
