import 'package:get/get.dart';
import 'package:kitabisa_test/model/home_model.dart';
import 'package:kitabisa_test/repository/home_repository.dart';

class HomeController extends GetxController {
  final dataHome = <HomeModel>[].obs;
  HomeRepository repository = HomeRepository();

  getData() async {
    Response? response = await repository.getData();

    for (var item in response!.body['data']) {
      HomeModel model = HomeModel.fromJson(item);
      dataHome.add(model);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
