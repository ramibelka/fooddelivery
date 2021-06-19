import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/profile.dart';
import 'package:fooddelivery/restaurants/mcdonald.dart';
import 'package:fooddelivery/restaurants/pizzahut.dart';
import 'package:fooddelivery/restaurants/tradjapaness.dart';

import 'cart.dart';
import 'homepage.dart';
class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    backgroundColor: Colors.white,
    
   body: Container(
          
              
              decoration: BoxDecoration(
                color: Color(0xFFFAFAFA),
              ),
                
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children:<Widget> 
                [ 
                 Container(
                   decoration: BoxDecoration(
                color: Color(0xFFECEFF1),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow:[ BoxShadow(
                 color:Colors.black26,
                 spreadRadius:2.0 ,
                 blurRadius: 5.0,
                ),
                ]
                ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children:<Widget> [
                       ClipRRect(borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0) ),
                       child: Image.asset("assets/images/mcdonald.jpg",height: 80.0,width: 80.0,fit: BoxFit.cover ),
                       ),
                       Column(
                       children:<Widget> [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("McDonald's",style: TextStyle(fontSize: 18.0,color: Colors.blue ,fontWeight: FontWeight.bold),),
                         ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("click to see food:"),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.fastfood,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder :(BuildContext conetxt) => Mcdonald()));
                                },
                              ),
                          ],
                        )
                       ],
                       ),
                      ],      
                ),
                   ),
                 ),
                SizedBox(height: 20.0,),
                 Container(
                   decoration: BoxDecoration(
                color: Color(0xFFECEFF1),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow:[ BoxShadow(
                 color:Colors.black26,
                 spreadRadius:2.0 ,
                 blurRadius: 5.0,
                ),
                ]
                ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children:<Widget> [
                       ClipRRect(borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0) ),
                       child: Image.asset("assets/images/pizzahut.png",height: 80.0,width: 80.0,fit: BoxFit.cover ),
                       ),
                       Column(
                       children:<Widget> [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Pizzahut",style: TextStyle(fontSize: 18.0,color: Colors.blue ,fontWeight: FontWeight.bold),),
                         ),
                         
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text("click to see food:"),
                             ),
                             IconButton(
                                icon: Icon(
                                  Icons.fastfood,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder :(BuildContext conetxt) => Pizzahut()));
                                },
                              ),
                           ],
                         )
                       ],
                       ),
                      ],      
                ),
                   ),
                 ),
                SizedBox(height: 20.0,),
                Container(
                  decoration: BoxDecoration(
                color: Color(0xFFECEFF1),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow:[ BoxShadow(
                 color:Colors.black26,
                 spreadRadius:2.0 ,
                 blurRadius: 5.0,
                ),
                ]
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children:<Widget> [
                       ClipRRect(borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),bottomLeft:Radius.circular(10.0) ),
                       child: Image.asset("assets/images/japan.jpg",height: 80.0,width: 80.0,fit: BoxFit.cover ),
                       ),
                       Column(
                       children:<Widget> [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Japanesse Flavor",style: TextStyle(fontSize: 18.0,color: Colors.blue ,fontWeight: FontWeight.bold),),
                         ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("click to see food:"),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.fastfood,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder :(BuildContext conetxt) => Tradjapanesse()));
                                },
                              ),
                          ],
                        )
                       ],
                       ),
                      ],      
                    ),
                  ),
                ),
                ],
                ),
              ),
             ),
          
            ); 
           

      
            
  }
}
   