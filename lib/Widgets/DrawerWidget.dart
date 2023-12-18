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

              Card(
               child: ListTile(                                     // (bu card tasarımını komle bitirdikten sontra listTile ctrl . ile yeni bir widget kazandırıp bunun dına da card veriyoruz bu sayede görünümü dha güzel oluyor ve sektörde böyle kullanılıyor )   anlamasına cad tasarımlarında kullanılır ilerde çok çok kullanıcaz proje geliştirmelerde 
                title: Text('My Card'),                             // burada video da text yerine img kullanıyor veli hoca. bizde kullanabiliriz. fakat tasarım açısından şuan böyle bırakıyorum 
                subtitle: Text('how do you your card'),           // textin altına yazı yazmak içib subtitle yapmamız lazım. Alt başlık manasında 
                leading:  Icon(Icons.attach_money),              // bu para işleminin sol tarafına bir şey koymak istiyorsan leading yapmalıyız. icon koydum veya başka şyler koyularabilir işleme göre 
                trailing: Icon(Icons.chevron_right_outlined),   // buda sağ tarafa bir şey koyulması için. trailing yazıyoruz 
                dense: true,                                          // buda kompanenti olabldiğince sıkıştırmayı sağlıyor
                contentPadding: EdgeInsets.zero ,                    // bu gözden kaçabilir fakat çök önemi. yapının içinde ki paddingi sıfırlıyoruz ki colm a yani ana widgeta verdiğimiz paddingi bozmamak için. yukarıdan aşagı inen kompanentleri bozmamak için 
                                                       // buda yaptıgımız kartı tıklanabilir hale getirmemizi sağlıyor artık tıklayabiliyoruz. fakat column yanındaki const u silmemiz lazım yoksa hata alırız 
              ),
             ),
            
        ]
      ),
    );
  }
}