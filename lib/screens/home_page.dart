import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Widgets/categories_list_view.dart';
import 'package:news_app/Widgets/news_list_view.dart';
import 'package:news_app/Widgets/news_list_view_builder.dart';
import 'package:news_app/Widgets/news_tile.dart';
import 'package:news_app/models/article_model.dart';

import '../Widgets/category_card.dart';
import '../services/news_service.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       centerTitle: true,
       elevation: 0,
       title: Row(
         mainAxisSize: MainAxisSize.min,
         children: [
           const Text('News', style: TextStyle(
             color: Colors.black,
           ),),
           const Text('Cloud', style: TextStyle(
             color: Colors.orange,
           ),),

         ],
       ),
     ),
      // body: CategoriesListView(),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32,)),
             NewsListViewBuilder( category: 'general',),
            // SliverToBoxAdapter(child: NewsListView(),)
          ],
        ),
      ),
    );
  }
}


// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 16.0),
// child: Column(
// children: [
// 
// SizedBox(height: 32,),
// Expanded(child: NewsListView()),
// ],
// ),
// )