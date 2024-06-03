import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      body: Column(
        children: [
          SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text(
                'Product List',
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.search_outlined, color: Colors.black,),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(color: Color(0xB81A395A), blurRadius: 2),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
