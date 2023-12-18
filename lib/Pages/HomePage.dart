import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/NewestItemsWidget.dart';

import '../Widgets/AppBarWidget.dart';
import '../Widgets/CategoriesWidget.dart';
import '../Widgets/DrawerWidget.dart';
import '../Widgets/PopularItemsWidget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer : const DrawerWidget(),

      body: ListView(
        children:    const [
          // Custom App bar widget
          AppBarWidget(),

          // search 
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: _SearchContainer(),
          ), 

          // Category 
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text('Categories', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ), 
          // category Items
          CategoriesWidget(), 

          // Popular Items
           Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text('Popular', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ), 
        // Popular Items Widget
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularItemsWidget( ImagePath: 'img/up5.png', FoodName: 'BurgerKing', price: '14',),
              PopularItemsWidget( ImagePath: 'img/up1.png', FoodName: 'PizzaHot', price: '6', ),
              PopularItemsWidget( ImagePath: 'img/up4.png', FoodName: 'Salate', price: '25',),
              PopularItemsWidget( ImagePath: 'img/up2.png', FoodName: 'Prizola', price: '14',),
              PopularItemsWidget( ImagePath: 'img/up6.png', FoodName: 'CoccaCola', price: '4',),
            ],
          ),
        ),

         // Newest  
         Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text('Newest', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ), 
          // newest Items
        NewestItemsWidget(),

        ],
      ),


      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          boxShadow: [ BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2, 
              blurRadius: 10, 
              offset: const Offset(0, 3), 
            )]),

        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'cartPage');
          },
          backgroundColor: Colors.white, 
          child: const Icon(Icons.card_travel_sharp, size: 28, color: Colors.red,),
          ),

          
      ),
    );
  }
}









// Search Container
class _SearchContainer extends StatelessWidget {
  const _SearchContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,  // ekranın tamamını kaplar 
      height: 50, 
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(20), 
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2, 
            blurRadius: 10, 
            offset: const Offset(0, 5),
          )]
      ),

      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [

            const Icon(CupertinoIcons.search, color: Colors.red,), 

            SizedBox(
              height: 50, width: 290, 
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'What would you like to have?', 
                    border: InputBorder.none, 
                  ),
                ),
              ),
            ), 

            const Icon(Icons.filter_list),

          ]),
      ),
    );
  }
}



//    drawer: const Drawer(shadowColor: Colors.yellow, backgroundColor: Colors.brown, child: Center(child: Text('selfsdfsdf')),),      // sol üst köşeye dünyanın en güzel ve koaly kodla yazılan menü bar getirdi. css de anamiz sikilirdi. içine özellik girebiliyoruz rengini bocshodow vs vs 
