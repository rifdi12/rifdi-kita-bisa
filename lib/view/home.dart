import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitabisa_test/component/home_card.dart';
import 'package:kitabisa_test/controller/home_controller.dart';
import 'package:kitabisa_test/model/home_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        showUnselectedLabels: true,
      ),
      appBar: AppBar(
        title: const Text("Kitabisa"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Obx(
          () => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.85),
            // shrinkWrap: true,
            itemCount: homeController.dataHome.length,
            itemBuilder: (_, index) {
              HomeModel data = homeController.dataHome[index];
              return HomeCard(
                image: data.urlImage!,
                title: data.title!,
                url: data.urlWebview!,
              );
            },
          ),
        ),
      ),
    );
  }
}
