import 'package:flutter/material.dart';
import 'package:fooddelivery/category/data.dart';
import 'package:fooddelivery/category/categoryclass.dart';
import 'package:fooddelivery/category/card.dart';


class category extends StatelessWidget {
 
  
  final List<Category> _categories = categories;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return CategoryCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            
          );
        },
      ),
      
   );
  }
}