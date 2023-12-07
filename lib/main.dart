import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:dio/dio.dart';


void main(){
  //NewsService(Dio()).getNews();
  runApp(const NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: const HomePage(),
    );
  }
}
