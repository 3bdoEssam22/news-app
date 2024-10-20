import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/News_List_View_Builder.dart';
import 'package:news_app_ui_setup/widgets/categories_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body:  const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 32),
              ),
              NewsLstViewBuilder(category: 'general'),
            ],
          ),

          // child: Column(
          //   children: [
          //     CategoriesListView(),
          //     SizedBox(height: 22),
          //     Expanded(child: NewsListView()),

          //   ],
          // ),
        ));
  }
}


