class Article {
  String author;
  String title;
  String description;
  String urlToImage;
  String publishedAt;
  String content;
  String url;
  Article({
    required this.author,
    required this.description,
    required this.publishedAt,
    required this.title,
    required this.urlToImage,
    required this.content,
    required this.url,
  });
}

class Articlesmodels {
  List<Article> json;
  Articlesmodels({required this.json});
  factory Articlesmodels.Tojson(Map<String, dynamic> resualts) {
    List<Article>  Filtered = (resualts['articles'] as List).map<Article>((vlaue){
      return  Article(
        url: vlaue['url'] ?? '',
        author: vlaue['author'] ?? '',
        description: vlaue['description'] ?? '' ,
        publishedAt: vlaue['publishedAt']  ?? '',
        title: vlaue["title"] ?? '',
        urlToImage: vlaue['urlToImage'] ?? '' ,
        content: vlaue['content']  ?? '' ,
      );
    }).toList();
    
    
    
    return Articlesmodels(
      json: Filtered,
    );
  }
}
