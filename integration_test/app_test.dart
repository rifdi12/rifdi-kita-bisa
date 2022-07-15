// ignore_for_file: avoid_relative_lib_imports

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:integration_test/integration_test.dart';
import 'package:kitabisa_test/controller/home_controller.dart';

import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('Tap Data then webview', (tester) async {
      app.main();
      HomeController controller = Get.put(HomeController());

      // State Data kosong
      expect(controller.dataHome.length, equals(0));

      // Hit the API
      await controller.getData();

      // Trigger a frame.
      await tester.pumpAndSettle();

      // State Data tidak kosong
      expect(controller.dataHome.length, greaterThan(0));

      // Get data dengan index 0
      Finder firstData = find.text(
        controller.dataHome[0].title!,
      );

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Tap first data
      await tester.tap(firstData);

      // Trigger a frame.
      await tester.pumpAndSettle();

      //Get back button
      Finder backButton = find.byTooltip('Back');

      //tap Back Button
      await tester.tap(backButton);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // get data dengan index 1
      Finder secondData = find.text(
        controller.dataHome[1].title!,
      );

      // Tap Second data
      await tester.tap(secondData);

      // Trigger a frame.
      await tester.pumpAndSettle();

      //tap Back Button
      await tester.tap(backButton);
    });
  });
}
