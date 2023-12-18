import 'package:flutter/material.dart';


class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          for(int i = 1; i < 7; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 370, height: 150,
              decoration:  BoxDecoration(
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
              child:   Row(
                children: [
          
                 InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,'ItemPage');
                  },
                  child: SizedBox(
                    width: 150, height: 120, 
                    child:  Image.asset('img/up$i.png'), 
                  ),
                 ),
          
                  const SizedBox(
                  
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Best Lezzets', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),), 
                      Text('taste our hot pizza, we provide Our Great Foods.', style: TextStyle(fontSize: 16),),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.red),
                          Icon(Icons.star, color: Colors.red),
                          Icon(Icons.star, color: Colors.red),
                          Icon(Icons.star, color: Colors.red),
                          Icon(Icons.star, color: Colors.red),  
                        ]), 
                        Text('\$10', style:TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),         
                    ]),
                                 ),
                
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                      Icon(Icons.favorite_border, color: Colors.red, size: 26,), 
                      Icon(Icons.shopping_bag, color: Colors.red, size: 26,), 
                    ],
                  ),
                ),
              
                ]),
            ),
          ),
        ]),
    );
  }
}