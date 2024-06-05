import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff8f8f8),
       padding: EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: [
          SizedBox(height: 50,),
          Center(
            child: Text(
              'My Account',
              style: TextStyle(fontSize: 24, color: Color(0xff222455), fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20,),
          CircleAvatar(
            radius: 60,
            child: ClipOval(
              child: Image.asset(
                'assets/images/default_product_image.png',
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Text(
              'Sakib Hossain',
              style: TextStyle(fontSize: 24, color: Color(0xff000000), fontWeight: FontWeight.bold),
            ),
          ),
          Center(child: Text('mdsakibhossainbd@gmail.com', style: TextStyle(color: Color(0xff535353)),)),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Color(0x221A395A), blurRadius: 1),
              ],
            ),
            child: Column(
              children: [
                Theme(
                  data: ThemeData().copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    childrenPadding: EdgeInsets.symmetric(horizontal: 15),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    expandedAlignment: Alignment.topLeft,
                    leading: Icon(Icons.person_outline_outlined),
                    title: Text('Account'),
                    children: [
                      Text('Email', style: TextStyle(color: Color(0x8f263238)),),
                      SizedBox(height: 5,),
                      Container(
                        width: Get.width - 40,
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(width: 1.0, color: Color(0x8f263238))

                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "mdsakibhossainbd@gmail.com",
                              hintStyle: TextStyle(color: Color(0x4d263238))
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),


                      Text('Full Name', style: TextStyle(color: Color(0x8f263238)),),
                      SizedBox(height: 5,),
                      Container(
                        width: Get.width - 40,
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(width: 1.0, color: Color(0x8f263238))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Sakib Hossain",
                              hintStyle: TextStyle(color: Color(0x4d263238))
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),


                      Text('Street Address', style: TextStyle(color: Color(0x8f263238)),),
                      SizedBox(height: 5,),
                      Container(
                        width: Get.width - 40,
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(width: 1.0, color: Color(0x8f263238))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "465 Nolan Causeway Suite 079",
                              hintStyle: TextStyle(color: Color(0x4d263238))
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),


                      Text('Apt, Suite, Bldg (optional)', style: TextStyle(color: Color(0x8f263238)),),
                      SizedBox(height: 5,),
                      Container(
                        width: Get.width - 40,
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(width: 1.0, color: Color(0x8f263238))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Unit 512",
                              hintStyle: TextStyle(color: Color(0x4d263238))
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),

                      Text('Zip Code', style: TextStyle(color: Color(0x8f263238)),),
                      SizedBox(height: 5,),
                      Container(
                        width: Get.width - 40,
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(width: 1.0, color: Color(0x8f263238))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "77017",
                            hintStyle: TextStyle(color: Color(0x4d263238))
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                     Row(
                       children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white

                              ),
                            )
                       ],
                     )


                    ],
                  ),
                ),
                SizedBox(
                  width: Get.width - 100,
                    child: Divider()),
                Theme(
                  data: ThemeData().copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    expandedAlignment: Alignment.topLeft,
                    leading: Icon(Icons.lock_outline),
                    title: Text('Password'),


                  ),
                ),
                SizedBox(
                    width: Get.width - 100,
                    child: Divider()),
                Theme(
                  data: ThemeData().copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    expandedAlignment: Alignment.topLeft,
                    leading: Icon(Icons.notifications_none_outlined),
                    title: Text('Notification'),

                  ),
                ),
                SizedBox(
                    width: Get.width - 100,
                    child: Divider()),
                Theme(
                  data: ThemeData().copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    expandedAlignment: Alignment.topLeft,
                    leading: Icon(FontAwesomeIcons.heart),
                    title: Text('Wishlist (00)'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
