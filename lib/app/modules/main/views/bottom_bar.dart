import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/main_controller.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key});
  final MainController controller = Get.put(MainController());
  final menuSelectedColor = Color(0xffFF679B);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              controller.selectedBottomBarItem.value = PageName.home;
            },
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Container(color: controller.selectedBottomBarItem.value == PageName.home ?
                    menuSelectedColor : Colors.transparent,
                      margin: EdgeInsets.only(bottom: 3),
                      height: 3, width: 30,),
                  ),
                  Obx(
                  () => Icon(Icons.home,
                        color: controller.selectedBottomBarItem.value == PageName.home ?
                        menuSelectedColor : Colors.grey
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              controller.selectedBottomBarItem.value = PageName.feature;
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                  () => Container(color: controller.selectedBottomBarItem.value == PageName.feature ?
                  menuSelectedColor : Colors.transparent,
                      margin: EdgeInsets.only(bottom: 3),
                      height: 3, width: 30,),
                  ),
                  Obx(
                      () => Image.asset('assets/images/feature.png', color: controller.selectedBottomBarItem.value == PageName.feature ?
                      menuSelectedColor : Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              controller.selectedBottomBarItem.value = PageName.search;
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() =>Container(color: controller.selectedBottomBarItem.value == PageName.search ?
                  menuSelectedColor : Colors.transparent,
                    margin: EdgeInsets.only(bottom: 3),
                    height: 3, width: 30,)),
                  Obx(() =>Icon(Icons.search,
                      color: controller.selectedBottomBarItem.value == PageName.search ?
                      menuSelectedColor : Colors.grey)),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              controller.selectedBottomBarItem.value = PageName.cart;
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                          () => Container(color: controller.selectedBottomBarItem.value == PageName.cart ?
                          menuSelectedColor : Colors.transparent,
                    margin: EdgeInsets.only(bottom: 3),
                    height: 3, width: 30,)),
                  Obx(
                          () => Icon(Icons.shopping_cart_outlined,
                      color: controller.selectedBottomBarItem.value == PageName.cart ?
                      menuSelectedColor : Colors.grey)),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              controller.selectedBottomBarItem.value = PageName.profile;
            },
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                          () => Container(color: controller.selectedBottomBarItem.value == PageName.profile ?
                      menuSelectedColor : Colors.transparent,
                        margin: EdgeInsets.only(bottom: 3),
                        height: 3, width: 30,)),
                  Obx(
                          () => Icon(Icons.person_outline_outlined,
                          color: controller.selectedBottomBarItem.value == PageName.profile ?
                          menuSelectedColor : Colors.grey)),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
