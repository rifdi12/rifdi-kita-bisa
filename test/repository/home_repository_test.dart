import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:kitabisa_test/helper/api.dart';
import 'package:kitabisa_test/repository/home_repository.dart';

void main() {
  HomeRepository repository = HomeRepository();
  ApiHelper controller = Get.put(ApiHelper());
  String? baseUrl = controller.httpClient.baseUrl;
  group("Check Get Data Homepage", () {
    test("Return body runtime type", () async {
      Response? response = await repository.getData();
      expect(response.runtimeType, Response);
    });

    test("Get Status code", () async {
      Response? response = await repository.getData();
      expect(response!.statusCode, 200);
    });

    test("Check URL ", () async {
      Response? response = await repository.getData();
      expect(response!.request!.url.toString(), "${baseUrl!}response.json");
    });
  });
}
