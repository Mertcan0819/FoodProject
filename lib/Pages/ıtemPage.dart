import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/AppBarWidget.dart';
import 'package:flutter_application_1/Widgets/CartBottomNavBar.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../Widgets/DrawerWidget.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(), 

          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset('img/up4.png', height: 200),
          ),
          
           ClipPath(
           clipper: WaveClipperTwo(),
           child: Container(
            height: 110,
            color: Colors.deepPurple,
            child: const Center(),
          ),
        ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15),
             child: Column(
              children: [
             const Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [   

              Row(children: [
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.red),
                  Icon(Icons.star, color: Colors.red), 
                  Icon(Icons.star, color: Colors.red),
                ]),

              Text('\$10', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

              ]), 
           
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Hot Pizza', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)), 
                   
                    Container(
                      width: 90,
                      padding: const EdgeInsets.all(5), 
                      decoration: BoxDecoration(
                        color: Colors.red, 
                        borderRadius: BorderRadius.circular(10), 
                      ),
                      child: const Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                          Icon(Icons.remove, color: Colors.white,size: 20),
                          Text('1', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)), 
                          Icon(Icons.add, color: Colors.white, size: 20,), 
                        ]),  
                       ),

                  ]),
               ),
           
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Taste Our Hot Pizza at low price, this is famous pizza and you will love it. will cost you at low price, we hope you will enjoy and order many times.', style: TextStyle(fontSize: 16,)),
                ),
                      
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text('Delievrery Time:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), 

                            Row(
                              children: [
                                Icon(Icons.timelapse_rounded, color: Colors.red,), 
                                SizedBox(width: 5), 
                                Text('30 Minutes', style: TextStyle(fontSize: 20),)
                              ]),
          
                          ]),
                      ),
                        const Divider(color: Colors.red, thickness: 1.6),
              ]),
           ),
 
       ]), 
        drawer:  const DrawerWidget(),
        bottomNavigationBar: const CartBottomNavBar(),
    ); 
      
  }
}