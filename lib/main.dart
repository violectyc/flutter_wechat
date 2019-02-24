import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import './app.dart';
import './loading.dart';
import './search.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "wechat",
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder>{
        "app": (BuildContext context) => new App(),
        "/friends": (_) => new WebviewScaffold(
              url: "https://weixin.qq.com/",
              appBar: new AppBar(
                title: new Text("微信朋友圈"),
              ),
              withZoom: true,
              withLocalStorage: true,
            ),
        'search': (BuildContext context) => new Search(),
      },
      home: new LoadingPage(),
    ));

final ThemeData mDefaultTheme = new ThemeData(
    primaryColor: Color(0xff303030),
    scaffoldBackgroundColor: Color(0xFFebebeb),
    cardColor: Color(0xff393a3f));
