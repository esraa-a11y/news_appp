
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Widgets/news_tile.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
   NewsListView({super.key,required this.articles});

  //List<ArticleModel> articles = [];

  @override
  Widget build(BuildContext context)  {
   // List<ArticleModel> articles = await NewsService(Dio()).getNews();

    return SliverList(

        delegate: SliverChildBuilderDelegate(
            childCount: articles.length, (context,index){

          return Padding(
            padding: const EdgeInsets.only(bottom: 22.0),
            child: NewsTile(articleModel: articles[index],),
          );
        }))
    ;
  }
}
