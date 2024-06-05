import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wedevs_assignment/app/modules/main/views/product_view.dart';
import 'package:wedevs_assignment/model/home_model.dart';

import '../controllers/main_controller.dart';

class HomePage extends GetView<MainController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff8f8f8),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Text(
                        'Product List',
                        style: TextStyle(fontSize: 24, color: Color(0xff222455), fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.search_outlined, color: Colors.black, size: 28,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xfff8f8f8),
                      boxShadow: [
                        BoxShadow(color: Color(0xB81A395A), blurRadius: 1),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.tune_sharp),
                            ),
                            Text('Filter'),
                          ],
                        ),

                        Row(
                          children: [
                            Text('Sort by'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_drop_down_sharp),
                            ),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.list),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  FutureBuilder(
                      future: controller.getData(),
                      builder: (context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.waiting){
                          return CircularProgressIndicator();
                        }
                        List<HomeModel> list = snapshot.data!;
                        return GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 0, // Spacing between columns
                                mainAxisSpacing: 0,
                                childAspectRatio: 0.545),
                            itemCount: list.length,
                            itemBuilder: (context, index){
                              HomeModel model = list[index];
                              return ProductView(
                                image: model.images![0].src!,
                                title: model.name!,
                                activePrice: model.salePrice!,
                                inactivePrice: model.regularPrice!,
                                rating: double.parse(model.averageRating!),
                              );
                            });
                      }
                  ),
                ],
              ),)]),
        )
    );
  }
}
