import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
      
              DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
              color: Colors.red, 
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('img/up3.png'),
            ),
            accountName: Text('Programmer', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), 
            accountEmail: Text('Programmer@gmail.com', style: TextStyle(fontSize: 16),),        
            ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.red,),
                title: Text("Home",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.chevron_right),
              ),
            ), 
             Card(
               child: ListTile(
                leading: Icon(Icons.person, color: Colors.red,),
                title: Text("My Account",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.chevron_right),
                         ),
             ),
             Card(
               child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
                title: Text("My Orders",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.chevron_right),
              ),
             ),
             Card(
               child: ListTile(
                leading: Icon(Icons.heart_broken_outlined, color: Colors.red,),
                title: Text("My Wish List",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
               trailing: Icon(Icons.chevron_right),
              ),
             ),
             Card( 
               child: ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.red,),
                title: Text("Exıt",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                textColor: Colors.red,
                trailing: Icon(Icons.chevron_right),
              ),
             ),

            
            
        ]
      ),
    );
  }
}
