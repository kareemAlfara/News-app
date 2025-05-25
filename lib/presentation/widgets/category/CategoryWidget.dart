import 'package:elkareem_news/components/components.dart';
import 'package:elkareem_news/data/models/categoryModel.dart';
import 'package:elkareem_news/presentation/screens/categoryPage.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categorymodel});
  final Categorymodel categorymodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap:
            () => navigat(
              context,
              widget: Categorypage(Categoryname: categorymodel.Categoryname),
            ),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(categorymodel.CategoryImage),
            ),
          ),
          child: Center(
            child: defulttext(
              data: categorymodel.Categoryname,
              color: const Color.fromARGB(255, 105, 247, 110),
              fSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
