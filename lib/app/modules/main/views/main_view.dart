import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wedevs_assignment/app/modules/main/views/cart_page.dart';
import 'package:wedevs_assignment/app/modules/main/views/profile_page.dart';
import 'package:wedevs_assignment/app/modules/main/views/search_page.dart';
import '../controllers/main_controller.dart';
import 'bottom_bar.dart';
import 'feature_page.dart';
import 'home_page.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => getSelectedWidget(controller.selectedBottomBarItem.value)),
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget getSelectedWidget  (PageName pageName){
    switch(pageName){
      case PageName.home:
        return HomePage();
      case PageName.feature: return FeaturePage();
      case PageName.search: return SearchPage();
      case PageName.cart: return CartPage();
      case PageName.profile: return ProfilePage();
      default: return HomePage();
    }
  }

}