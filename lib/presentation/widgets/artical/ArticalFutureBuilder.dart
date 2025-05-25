import 'package:dio/dio.dart';
import 'package:elkareem_news/components/components.dart';
import 'package:elkareem_news/data/models/ArticalModel.dart';
import 'package:elkareem_news/presentation/widgets/artical/articalList.dart';
import 'package:elkareem_news/data/repositories/services/Services.dart';
import 'package:flutter/material.dart';

class Articalfuturebuilder extends StatefulWidget {
  const Articalfuturebuilder({super.key, required this.categoryName});
  final String categoryName;
  @override
  State<Articalfuturebuilder> createState() => _ArticalfuturebuilderState();
}

class _ArticalfuturebuilderState extends State<Articalfuturebuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = Services(
      dio: Dio(),
    ).getGeneralNews(CategoryName: widget.categoryName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articalmodel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Articallist(bodylist: snapshot.data!);
        } else if (snapshot.hasError) {
          return defulttext(data: "there are an error ,try again");
        } else {
          return const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Center(child: CircularProgressIndicator())],
          );
        }
      },
    );
  }
}
