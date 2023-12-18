import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/AppBarWidget.dart';
import 'package:flutter_application_1/Widgets/DrawerWidget.dart';

import '../Widgets/CartBottomNavBar.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children:   [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const AppBarWidget(), 
           
                 const Padding(
                   padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
                   child: Text('Order List', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                 ), 
           
                 // order List altında ki container
                 const _OrderContainer(ImagePath: 'img/up1.png', Number: '1', Price: '20', Title: 'Hot Pizza' , SubTitle: 'Taste Our Hot Pizza'), 
                 const _OrderContainer(ImagePath: 'img/up5.png', Number: '3', Price: '25', Title: 'Hot Burger' , SubTitle: 'Taste Our Hot Burger'), 
                // const _OrderContainer(ImagePath: 'img/up6.png', Number: '2', Price: '10', Title: 'Cold Drink' , SubTitle: 'Taste Our Cold Drink'), 

                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                   child: Container(
                    height: 210,
                     decoration:  BoxDecoration(
                     color: Colors.white, 
                     borderRadius: const BorderRadius.all(Radius.circular(10)), 
                     boxShadow: [BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 2,  blurRadius: 10, offset: const Offset(0, 5), 
                      )]),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Column(
                          children: [
                            _OrderRow(name: 'Items', piece: '10'),
                             Divider(color: Colors.red, thickness: 1.6),
                             _OrderRow(name: 'Sub-Total', piece: '\$60'), 
                             Divider(color: Colors.red, thickness: 1.6), 
                             _OrderRow(name: 'Delievery', piece: '\$20'),
                             Divider(color: Colors.red, thickness: 1.6),
                             _OrderRow(name: 'Total', piece: '\$80', ),
            
                          ]),
                      ),
                   ),
                 ),

               ]),
           ),
        ]),
        drawer:  const DrawerWidget(),
        bottomNavigationBar:  const CartBottomNavBar(),
    );
  }
}




// ORDER LİST CONTAİNER ALTINDA Kİ HESAP ÖDEME KISMI 
class _OrderRow extends StatelessWidget {
  const _OrderRow({required this.name, required this.piece,});

final String name;
final String piece;


  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
     Text(name, style: const TextStyle(fontSize: 20)), 
       Text(piece, style: const TextStyle(fontSize: 20,)),  
     
    ]);
  }
}

// Order Listin altında ki container........
class _OrderContainer extends StatelessWidget {
  const _OrderContainer({required this.ImagePath, required this.Title, required this.Price, required this.SubTitle, required this.Number});

final String ImagePath;
final String Title;
final String Price;
final String SubTitle;
final String Number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: 380, height: 100, 
        decoration:  BoxDecoration(
        color: Colors.white, 
        borderRadius: const BorderRadius.all(Radius.circular(10)), 
        boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,  blurRadius: 10, offset: const Offset(0, 5), 
        )]),
       child: Row(
         children: [
    
          Container(
            alignment: Alignment.center,
            child: Image.asset(ImagePath, height: 80, width: 140,),
          ), 
    
             SizedBox(
            width: 190, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: [
                Text(Title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), 
                 Text(SubTitle, style: const TextStyle(fontSize: 14, )), 
                 Text('\$ $Price', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.red),)
              ]),
          ), 
    
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.red, 
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Column(
                children: [
                  const Icon(CupertinoIcons.minus, color: Colors.white,),
                  Text(Number, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                  const Icon(CupertinoIcons.minus, color: Colors.white,),
                ],
              )
            ),
          )
    
         ]),
       ),
    );
  }
}