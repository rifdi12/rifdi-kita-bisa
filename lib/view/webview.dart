import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewHelper extends StatelessWidget {
  const WebViewHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          Get.arguments['title'],
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: WebView(
        initialUrl: Get.arguments['url'],
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
