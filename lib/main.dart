import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitabisa_test/helper/api.dart';
import 'package:kitabisa_test/helper/router.dart';
import 'package:kitabisa_test/helper/theme.dart';

void main() {
  Get.put(ApiHelper());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kita Bisa',
      theme: theme(),
      routes: route(),
      initialRoute: '/home',
    );
  }
}
