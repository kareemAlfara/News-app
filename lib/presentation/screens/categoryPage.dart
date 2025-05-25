import 'package:elkareem_news/presentation/widgets/artical/ArticalFutureBuilder.dart';

import 'package:flutter/material.dart';

class Categorypage extends StatelessWidget {
  const Categorypage({super.key, required this.Categoryname});
  final String Categoryname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Articalfuturebuilder(categoryName: Categoryname),
    );
  }
}
