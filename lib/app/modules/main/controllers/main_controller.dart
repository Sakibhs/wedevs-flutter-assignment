import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wedevs_assignment/model/home_model.dart';

class MainController extends GetxController {
  //TODO: Implement HomeController
  var selectedBottomBarItem = PageName.home.obs;
  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<List<HomeModel>> getData() async {
    List<HomeModel> listOfData = [];
    final response = await rootBundle.loadString('assets/json/response.json');
    final response2 = json.decode(response);
    for(int i = 0; i < 100; i++){
      try{
        listOfData.add(HomeModel.fromJson(response2[i]));
      } catch(e){
        break;
      }
    }
    return listOfData;
  }
}
enum PageName{
  home, feature, search, cart, profile
}