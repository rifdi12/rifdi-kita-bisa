import 'package:get/get.dart';
import 'package:kitabisa_test/helper/api.dart';

class HomeRepository {
  Future<Response?> getData() async {
    try {
      ApiHelper api = Get.put(ApiHelper());
      Response connect = await api.get("response.json");
      if (connect.isOk) {
        return connect;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
