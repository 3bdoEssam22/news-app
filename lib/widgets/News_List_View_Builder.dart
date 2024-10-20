import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/News_List_View.dart';

class NewsLstViewBuilder extends StatefulWidget {
  const NewsLstViewBuilder({super.key, required this.category});

  @override
  State<NewsLstViewBuilder> createState() => _NewsLstViewBuilderState();
final String category;
}
var future;
class _NewsLstViewBuilderState extends State<NewsLstViewBuilder> {
  List<ArticleModel> articles = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  future = NewsServices().getTopHeadLines(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops, Try again later.'),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty?  NewsListView(
    //         articles: articles,
    //       ): const SliverToBoxAdapter(child: Text('oops, Try again later.'),);
  }
}
