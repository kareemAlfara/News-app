import 'package:elkareem_news/components/components.dart';
import 'package:elkareem_news/presentation/widgets/category/CategoryWidget.dart';
import 'package:flutter/material.dart';

class categoryListView extends StatelessWidget {
  const categoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) =>
                CategoryWidget(categorymodel: categoryList[index]),
        itemCount: categoryList.length,
      ),
    );
  }
}
