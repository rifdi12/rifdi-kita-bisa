import 'package:flutter/material.dart';
import 'package:kitabisa_test/view/home.dart';
import 'package:kitabisa_test/view/webview.dart';

route() {
  return <String, WidgetBuilder>{
    '/home': (context) => const HomeView(),
    '/webview': (context) => const WebViewHelper(),
  };
}
