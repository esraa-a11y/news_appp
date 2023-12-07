import 'package:flutter/material.dart';
import 'package:news_app/Widgets/category_view.dart';
import 'package:news_app/models/category_model.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.categoryModel,}) : super(key: key);

  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(
            category: categoryModel.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.orange,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(categoryModel.image),
              ),
              borderRadius: BorderRadius.circular(12)
          ),
          child: Center(child: Text(categoryModel.categoryName ,style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),)),
        ),
      ),
    );
  }
}
