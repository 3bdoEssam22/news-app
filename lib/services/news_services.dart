import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsServices {
  final Dio dio = Dio();
  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
  Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=161b4c63327241c8a21fe0f75447b197&country=us&category=$category');
  Map<String, dynamic> jsonData = response.data;
  
  List<dynamic> articles = jsonData['articles'];
  List<ArticleModel> articlesList = [];
  
  for (var article in articles) {
    ArticleModel articlemodel = ArticleModel.fromjson(article);
    articlesList.add(articlemodel);
  }
  return articlesList;
}  catch (e) {
  return [];
}
  }
}
