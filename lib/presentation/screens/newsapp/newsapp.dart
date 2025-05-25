import 'package:elkareem_news/components/components.dart';
import 'package:elkareem_news/presentation/widgets/artical/ArticalFutureBuilder.dart';
import 'package:elkareem_news/presentation/widgets/category/categoryList.dart';


import 'package:flutter/material.dart';

class Newsapp extends StatelessWidget {
  const Newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            defulttext(data: "News"),
            defulttext(data: "Cloud", color: Colors.amber),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: categoryListView()),
          SliverToBoxAdapter(
            child: Articalfuturebuilder(categoryName: 'general',),
          ),
        ],
      ),
    );
  }
}

