import 'package:dio/dio.dart';
import 'package:elkareem_news/data/models/ArticalModel.dart';

class Services {
  final Dio dio;

  Services({required this.dio});
  List<Articalmodel> articaleList = [];

  Future<List<Articalmodel>> getGeneralNews({required CategoryName}) async {
    try {
      Response response = await dio.get(
        "https://gnews.io/api/v4/top-headlines?country=eg&category=$CategoryName&apikey=b6c932ce4ff392f5b4bc0df9375766ec",
      );
      Map<String, dynamic> Jsondata = response.data;
      List<dynamic> articales = Jsondata["articles"];
      for (var artical in articales) {
        Articalmodel articalmodel = Articalmodel.fromJson(artical);
        articaleList.add(articalmodel);
      }
      return articaleList;
    } catch (e) {
      print("error iss $e");
      return [];
    }
  }
}
