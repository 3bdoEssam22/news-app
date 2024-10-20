// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';
// import 'package:news_app_ui_setup/services/news_services.dart';
// import 'package:news_app_ui_setup/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getGeneralsNews();
//   }

//   Future<void> getGeneralsNews() async {
//     articles = await NewsServices().getNews();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: NewsTile(
//                     articleModel: articles[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }
