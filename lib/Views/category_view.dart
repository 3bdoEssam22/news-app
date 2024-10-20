import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/News_List_View_Builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          NewsLstViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
