import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/homepage.dart';
import 'package:fooddelivery/pages/cart.dart';
import 'package:fooddelivery/pages/profile.dart';
import 'package:fooddelivery/pages/restaurant.dart';
class MainScreen extends StatefulWidget {
  
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;
  List<Widget> pages;
 Widget currentpage;

  HomePage homepage;
  Restaurant restaurant;
  OrderPage cart;
  Profile profile;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      homepage= HomePage();
      restaurant= Restaurant();
      cart= OrderPage();
      profile= Profile();
      
      pages= [homepage,restaurant,cart,profile];

      currentpage=homepage;
    }
   @override

   Widget build(BuildContext context){
     return Scaffold(
     
     bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color(0xFFECEFF1),
       onTap: (int index){
         setState(() {
                    currentTabIndex =index;
                    currentpage =pages[index];
                  });
         
       },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            title: Text("Restaurants"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
      body: currentpage,
     );
   }
}
