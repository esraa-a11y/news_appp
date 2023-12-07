import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Widgets/news_list_view.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
class NewsListViewBuilder extends StatefulWidget {
 final String category;

  const NewsListViewBuilder({super.key, required this.category});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  var future;
  bool isLoading = true;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
     future = NewsService(Dio()).getNews(
      category: widget.category,
    );
  }
  // @override
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(builder: (context,snapshot){
    if (snapshot.hasData) {
      return  NewsListView(
        articles: snapshot.data!,
      );
    } else if (snapshot.hasError){
       return const SliverToBoxAdapter( child: ErrorMessage());
    } else {
      return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),));
    }
    }, future: future,);
    // return isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),)):articles.isNotEmpty?
    //      NewsListView(articles: articles,) : SliverToBoxAdapter( child: Text('try again'),);
  }
}

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('try again');
  }
}