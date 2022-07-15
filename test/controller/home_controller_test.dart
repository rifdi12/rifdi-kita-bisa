import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:kitabisa_test/controller/home_controller.dart';

void main() {
  HomeController controller = Get.put(HomeController());
  group("State Test", () {
    test("Inisiasi Data", () {
      expect(controller.dataHome.length, equals(controller.dataHome.length));
    });
    test("Update data Setelah melakukan hit API", () async {
      await controller.getData();
      expect(controller.dataHome.length, greaterThan(0));
    });
  });
}
