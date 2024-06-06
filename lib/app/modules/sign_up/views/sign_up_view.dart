import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wedevs_assignment/app/routes/app_pages.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 35,),
            Center(child: Image(image: AssetImage('assets/images/profile.png'))),
            SizedBox(height: 25,),
            Center(child: Text('Sign In', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),)),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(color: Color(0xB81A395A), blurRadius: 2),
                  ]
              ),
              child: TextField(
                controller: controller.signUpNameTextController,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    hintText: "Name"
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(color: Color(0xB81A395A), blurRadius: 2),
                  ]
              ),
              child: TextField(
                controller: controller.signUpEmailTextController,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Email"
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(color: Color(0xB81A395A), blurRadius: 2),
                  ]
              ),
              child: TextField(
                controller: controller.signUpPasswordTextController,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: "Password"
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(color: Color(0xB81A395A), blurRadius: 2),
                  ]
              ),
              child: TextField(
                controller: controller.signUpConfirmPasswordTextController,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: "Confirm Password"
                ),
              ),
            ),
            SizedBox(height: 35,),
            InkWell(
              onTap: () async {
                await controller.register();
              },
              child: Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: Color(0xffF1634C),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Center(
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.54,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'login_with'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                letterSpacing: 1.16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {

                  },
                  child: Container(
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(color: Color(0xB81A395A), blurRadius: 2),
                        ],
                        color: Colors.white),
                    child: Image(
                      fit: BoxFit.contain,
                      image:
                      AssetImage('assets/images/google_icon.png'),
                      height: 42,
                      width: 42,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () async {

                  },
                  child: Container(
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Color(0xB81A395A), blurRadius: 2),
                        ]),
                    child: Image(
                      fit: BoxFit.contain,
                      image:
                      AssetImage('assets/images/fb_icon.png'),
                      height: 42,
                      width: 42,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(child: Container(padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Already have an account'),
                    InkWell(
                      onTap: (){
                        Get.toNamed(Routes.SIGN_IN);
                      },
                      child: Text(" Login", style: TextStyle(color: Colors.blue),),
                    ),
                  ],
                )),),
          ],
        ),
      ),
    );
  }
}
