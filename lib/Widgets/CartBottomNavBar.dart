import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Total:', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),), 
            const Text('\$80', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.red),), 
            const SizedBox(width:170,), 
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)), 
              onPressed: () {},
              child: const Text('Order Now'), 
              ), 

          ]),
      ),
    );
  }
}