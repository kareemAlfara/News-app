import 'package:elkareem_news/components/components.dart';
import 'package:elkareem_news/data/models/ArticalModel.dart';
import 'package:elkareem_news/data/web/web_view.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:intl/intl.dart' as intl;

class ArticalWidget extends StatelessWidget {
  const ArticalWidget({super.key, required this.model});
  final Articalmodel model;
  @override
  Widget build(BuildContext context) {
    DateTime parsedDate = DateTime.parse(model.publishedAt);
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => navigat(context, widget: WebViewPage(url: model.url)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 11),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(color: const Color.fromARGB(60, 218, 211, 211)),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: defulttext(
                        data: intl.DateFormat.yMMMMd().format(parsedDate),
                        fSize: 16,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.5,
      
                    child: Padding(
                      padding: const EdgeInsets.only(right: 11),
                      child: defulttext(
                        textDirection: TextDirection.rtl,
                        data: model.source.name,
                        fSize: 16,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child:
                      // ignore: unnecessary_null_comparison
                      model.ArticalImage != null
                          ? Image.network(model.ArticalImage, fit: BoxFit.fill)
                          : Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg",
                            fit: BoxFit.fill,
                          ),
                ),
              ),
              defulttext(
                textDirection: TextDirection.rtl,
                data: model.Articaltitle,
                fSize: 18,
                fw: FontWeight.w500,
              ),
              defulttext(
                textDirection: TextDirection.rtl,
                color: const Color.fromARGB(255, 134, 134, 134),
                data: model.ArticalSubTitle,
                fSize: 16,
                fw: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
