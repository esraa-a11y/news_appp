import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';
  class NewsService{
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=d6a72786bcdb46afbdb7650739cb86f8&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles =
      jsonData['articles'];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    }
    catch(e){
      return [];
    }
    //print(jsonData);
  }
}