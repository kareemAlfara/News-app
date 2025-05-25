class Articalmodel {
  final String ArticalImage;
  final String Articaltitle;
  final String ArticalSubTitle;
  final String publishedAt;
  final String url;
  final Source source;

  Articalmodel( {
    required this.url,
    required this.source,
    required this.publishedAt,
    required this.ArticalImage,
    required this.Articaltitle,
    required this.ArticalSubTitle,
  });
  factory Articalmodel.fromJson(json) {
    return Articalmodel(
      ArticalImage: json["image"],
      url: json["url"],
      Articaltitle: json["title"],
      ArticalSubTitle: json["description"],
      publishedAt: json["publishedAt"],
      source: Source.fromJson(json["source"]),
    );
  }
}

class Source {
  final String name;

  Source({required this.name});
  factory Source.fromJson(json) {
return    Source(name: json["name"]);
  }
}

// "source": {
// "name": "Masrawy",
// "url": "https://www.masrawy.com"
// } 
