import 'package:flutter/material.dart';


class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({super.key, required this.FoodName,  required this.price, required this.ImagePath, });

final String FoodName; 
final String price; 
final String ImagePath;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context,'ItemPage');
          },
          child: Container(
            width: 170, height: 225,
            decoration: BoxDecoration(
              color: Colors.white, 
                  borderRadius: const BorderRadius.all(Radius.circular(10)), 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2, 
                      blurRadius: 10, 
                      offset: const Offset(0, 5), 
                    )]
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(ImagePath, width: 150, height: 130,), 
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(FoodName, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), 
             const Text('Taste Our Hot Burger', style: TextStyle(fontSize: 15),),
        
                  const SizedBox(height: 15,), 
        
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ $price', style: const TextStyle(color: Colors.red, fontSize: 17, fontWeight: FontWeight.bold),), 
                      const Icon(Icons.favorite_border, color: Colors.red, size: 26, ),
                    ]), 
                 ]),
                ) 
              ]),
          ),
        ),
      ),
    );
  }
}