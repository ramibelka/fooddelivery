import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fooddelivery/category/category.dart';
import 'package:fooddelivery/category/costumtext.dart';
import 'package:fooddelivery/pages/signin.dart';
import 'package:fooddelivery/products/popularfood.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
     backgroundColor: Color(0xFFFAFAFA),
                  
                  appBar: AppBar(
                    backgroundColor: Color(0xFFECEFF1),
                    title: Text(
                      "FooDZ Delivery",
                      style: TextStyle(
                        color: Color(0xFF64B5F6),
                      ),
                    ),
                    
                      
                    actions: [
                      IconButton(
                        icon: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder :(BuildContext conetxt) => SignIn()));
                        },
                      )
                    ],
                  ),
            body: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                            Text(
                              "You Order it, \nWe Deliver it to you ",
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            
                           Container(
                             margin: EdgeInsets.all(10),
                             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(40),
                               border: Border.all(  
                                 color: Colors.black, 
                       ),
                      ),
                      child: TextField(
                        decoration : InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: Colors.blueAccent,
                          ),
                          hintText: "search....",
                          hintStyle: TextStyle(color:Colors.black),
                    )
               )         

            ),
            SizedBox(
           height:20.0,
            ),
            category(),
            SizedBox(
           height:20.0,
            ),
             Text( "Popular Food:",style: TextStyle(fontSize:  20, color: Colors.black, fontWeight:  FontWeight.bold),),
                    
            PopularFood(),
           
            
          ],
          
        ),  

        ),
       
    );
  }
}
 