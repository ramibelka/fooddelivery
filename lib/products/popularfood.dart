import 'package:flutter/material.dart';
import 'package:fooddelivery/category/costumtext.dart';
import 'package:fooddelivery/products/product.dart';
import 'package:fooddelivery/restaurants/mcdonald.dart';


List<Product> productlist=[
 Product(name: "cheeseburger",rating:4.6 ,price:150,whishlist:true, image:"cheeseburger.jpg"),
 Product(name: "friedchicken",rating:4.2 ,price:100,whishlist:false, image:"friedchicken.jpg"),
];
class PopularFood extends StatefulWidget {
  @override
  _PopularFoodState createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 240.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productlist.length,
                itemBuilder: (_, index){
              return Padding(
                padding: EdgeInsets.all(8),
                child:Container(
              height: 240.0,
              width: 200.0,
              decoration: BoxDecoration(
                color:Colors.white,
                boxShadow:[ BoxShadow(
                 color:Colors.grey[300],
                 offset: Offset(1,1),
                 blurRadius: 4,
                ),
                ]
              ),
              child: Column(
                children:<Widget> [
                 
                      Image.asset("assets/images/${productlist[index].image}",height: 140.0,width: 140.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [                         
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CustomText(text: productlist[index].name),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color:Colors.white,
                                boxShadow:[ BoxShadow(
                                color:Colors.grey[300],
                                offset: Offset(1,1),
                                blurRadius: 4,
                ),
                ]
              ),
                              
                                  
                                   
                                        child: IconButton( 
                                       iconSize: 16,  
                                       alignment: Alignment.center,
                                             icon: Icon(
                                          
                                            Icons.restaurant,
                                            color: Colors.black,
                                            size: 18.0,
                                            
                                ),
                                onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder :(BuildContext conetxt) => Mcdonald()));
                                },
                              ),
                                  
                                     ),
                          ),
                      
                                  
                         
                        
                        ],
                      ),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget> [
                      Row(children:<Widget> [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: CustomText(text: productlist[index].rating.toString(), color:Colors.grey ,size: 14,),
                        ),
                        SizedBox(width: 2,),
                        Icon(Icons.star,color:Colors.red, size :16),
                        Icon(Icons.star,color:Colors.red, size :16),
                        Icon(Icons.star,color:Colors.red, size :16),
                        Icon(Icons.star,color:Colors.red, size :16),
                        Icon(Icons.star,color:Colors.grey, size :16),
                            ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: CustomText(text: "${productlist[index].price}DA", weight: FontWeight.bold,),
                            )
                    ],
                  ),
                ],
              ),
            ), 
            );

              },),
            );
  }
}