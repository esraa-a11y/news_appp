//
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/Widgets/news_tile.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// class NewsListView extends StatefulWidget {
//   const NewsListView({Key? key}) : super(key: key);
//
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }
//
// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState()  {
//     // TODO: implement initState
//     super.initState();
//     getGeneralNews();
//
//   }
//
//   Future<void> getGeneralNews() async {
//     articles= await NewsService(Dio()).getNews();
//     isLoading=false;
//     setState(() {
//
//     });
//   }
//   @override
//   Widget build(BuildContext context)  {
//     // List<ArticleModel> articles = await NewsService(Dio()).getNews();
//
//     return  isLoading ? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))  : SliverList(
//
//         delegate: SliverChildBuilderDelegate(
//             childCount: articles.length, (context,index){
//
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 22.0),
//             child: NewsTile(articleModel: articles[index],),
//           );
//         }))
//     ;
//   }
// }
