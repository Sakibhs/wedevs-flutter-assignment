import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
   const ProductView({super.key, required this.image, required this.title, required this.activePrice, required this.inactivePrice, required this.rating});
   final String image;
   final String title;
   final String activePrice;
   final String inactivePrice;
   final double rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 2 - 18,
      height: (Get.width / 2 - 18) * 1.8,
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xffffffff),
          boxShadow: [
            BoxShadow(color: Color(0xB81A395A), blurRadius: 1),
          ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            width: Get.width / 2 - 18,
            height: Get.width / 2 - 18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(15), 
                  topLeft: Radius.circular(15)),
            ),
            child: Image.network(image,
              fit: BoxFit.fill,
              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                return Image.asset('assets/images/default_product_image.png');
              },
            ),
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 10,),
              Expanded(
                child: Text(title, style: TextStyle(
                  color: Colors.black
                ),overflow: TextOverflow.ellipsis,
                maxLines: 1,),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 10,),
              Text('\$$inactivePrice', style: TextStyle(decoration: TextDecoration.lineThrough, decorationColor: Color(0xff989FA8), color: Color(0xff989FA8))),
              SizedBox(width: 10,),
              Text('\$$activePrice', style: TextStyle(
               color: Colors.black, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(width: 5,),
              RatingBar(
                  ignoreGestures: true,
                  itemSize: 25,
                  initialRating: rating,
                  glowColor: Colors.yellow,
                  direction: Axis.horizontal,
                  allowHalfRating: true, ratingWidget: RatingWidget(
                  half: Icon(Icons.star_half, color: Color(0xffF5A623),),
                  empty: Icon(Icons.star_border, color: Color(0xffF5A623),),
                  full: Icon(Icons.star, color: Color(0xffF5A623),)),
                onRatingUpdate: (double value) {  },
              ),
            ],
          ),
          

        ],
      ),
    );
  }
}
