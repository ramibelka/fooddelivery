import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:fooddelivery/screen/mainscreen.dart';
class Pizzahut extends StatefulWidget {
  @override
  _PizzahutState createState() => _PizzahutState();
}

class _PizzahutState extends State<Pizzahut> {
  @override
  Widget build(BuildContext context) {
   double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
                body: SlidingUpPanel(
                  maxHeight: height,
                  minHeight: height/1.5,
      body: Container(
        alignment: Alignment.topCenter,
      
        child: Image(
          image: AssetImage("assets/images/pizzahutview.jpg"),
          fit: BoxFit.cover,height: height/2.8,
          width: width,

        )
      ),
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.grey[100],
      panel: Padding(
        padding: const EdgeInsets.fromLTRB(20.0,30.0, 30.0,20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Pizza Hut",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Text("4.5",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
              Icon(Icons.star,color: Colors.yellow,size: 15,),
            ],
            ),
              ],
            ),
            
            SizedBox(height: 10.0),
            Text("italian - 7.8km",style: TextStyle(fontSize: 15.0,color: Colors.grey),),
             SizedBox(height: 10.0),
            Padding(padding: EdgeInsets.all(20.0),
            child: Column(
              children: [menuItemTab("assets/images/pepperonipizza.jpg","pepperonipizza","pepperoni,cheese","200 da"),
              SizedBox(height: 20.0,),
              menuItemTab("assets/images/margerittapizza.jpg","margeritapizza","mozarella,garlic","250 da")],
            )        
        ),
          ],
      ),
                
      ),
      
                ),  
    
    floatingActionButton: FloatingActionButton(



        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder :(BuildContext conetxt) => MainScreen()));
                        },
       
        child: Icon(Icons.home),
      ), 
    );
  }
}
Widget menuItemTab(String foodImage, String food, String ingredients, String price){
  
  return Container(
        height: 100.0,
       width: 500,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left:50.0,),
          
              child: Container(
                padding: EdgeInsets.only(left:70.0,right:20.0,),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color: Colors.white),
                height: 100.0,
                width: 500,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,                   
                    children: [
                    Text(food ,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 15.0)),
                    Text(ingredients ,style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0)),
                    Text(price, style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 15.0)),
                  ],),
                  IconButton( 
                                       iconSize: 16,  
                                       alignment: Alignment.center,
                                             icon: Icon(
                                          
                                            Icons.add_shopping_cart_rounded,
                                            color: Colors.black,
                                            size: 18.0,
                                            
                                ),
                                onPressed: () {
                                           
                                },
                              ),

                ],),
              
              ),
            ),
            Positioned(left: 0.0,child: Image(image: AssetImage(foodImage),height: 100.0,width: 100.0,),),
          ],
        ),
               );
             }