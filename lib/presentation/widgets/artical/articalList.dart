import 'package:elkareem_news/data/models/ArticalModel.dart';
import 'package:elkareem_news/presentation/widgets/artical/articalWidget.dart';
import 'package:flutter/material.dart';

class Articallist extends StatelessWidget {
  const Articallist({super.key, required this.bodylist});
final List<Articalmodel>bodylist;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => ArticalWidget(model:bodylist[index] ,),
      itemCount: bodylist.length,
    );
  }
}
