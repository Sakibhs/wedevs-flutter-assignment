import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:wedevs_assignment/model/home_model.dart';
import 'package:http/http.dart' as http;
import 'package:wedevs_assignment/model/login_response_model.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Daily Sales Record",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(
        builder: (context, child){
          return child!;
        }
      ),
      theme: ThemeData(
          primarySwatch: Colors.teal,
          tabBarTheme: TabBarTheme(
              indicatorColor: Colors.teal,
              labelColor: Colors.teal
          )
      ),
    );
  }
}
