import 'package:flutter/material.dart';
import 'package:news_app/Widgets/category_card.dart';
import 'package:news_app/models/category_model.dart';
class CategoriesListView extends StatelessWidget {
   CategoriesListView({Key? key}) : super(key: key);
  final List <CategoryModel> categoris = [
    CategoryModel('assets/business.jpg', 'Business'),
    CategoryModel('assets/entertaiment.jpg', 'Entertainment'),
    CategoryModel('assets/general.jpg', 'General'),
    CategoryModel('assets/health.jpg', 'Health'),
    CategoryModel('assets/science.jpg', 'Science'),
    CategoryModel('assets/sports.jpg', 'Sports'),
    CategoryModel('assets/technology.jpg', 'Technology'),


  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoris.length,
          itemBuilder: (context,index){
            return CategoryCard(categoryModel: categoris[index]);
          }),
    );
  }
}
