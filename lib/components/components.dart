import 'package:elkareem_news/data/models/categoryModel.dart';
import 'package:flutter/material.dart';

Future<dynamic> navigat(context, {required Widget widget}) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
Widget defulttext({
  TextDirection? textDirection,
  required String data,
  double? fSize,
  Color? color,
  FontWeight? fw,
}) => Text(
  textDirection: textDirection,
  maxLines: 2,
  data,
  style: TextStyle(
    fontSize: fSize,
    color: color,
    fontWeight: fw,
  ).copyWith(overflow: TextOverflow.ellipsis),
);
List<Categorymodel> categoryList = [
  Categorymodel(
    Categoryname: "science",
    CategoryImage: "assets/images/science.avif",
  ),
  Categorymodel(
    Categoryname: "health",
    CategoryImage: "assets/images/health.avif",
  ),
  Categorymodel(
    Categoryname: "entertaiment",
    CategoryImage: "assets/images/entertaiment.avif",
  ),
  Categorymodel(
    Categoryname: "technology",
    CategoryImage: "assets/images/technology.jpeg",
  ),
];
