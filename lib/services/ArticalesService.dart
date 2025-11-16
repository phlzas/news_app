import 'package:dio/dio.dart';
import 'package:news_app/models/ArticlesModels.dart';

class Articalesservice {

  Dio dio = Dio();

  Future<Articlesmodels> GetEverything () async {
      Response response  = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=c3d35ea71666482fa2269d6841329c7e");
      return Articlesmodels.Tojson(response.data);
  }

  Future<Articlesmodels> GetWithCetgory (String cetgory) async {
      Response response  = await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=$cetgory&apiKey=c3d35ea71666482fa2269d6841329c7e");
      return Articlesmodels.Tojson(response.data);
  }
}
