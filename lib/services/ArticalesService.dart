import 'package:dio/dio.dart';
import 'package:news_app/models/ArticlesModels.dart';

class Articalesservice {

  Dio dio = Dio();

  Future<Articlesmodels> GetEverything () async {
     try{
       Response response  = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=c3d35ea71666482fa2269d6841329c7e");
      return Articlesmodels.Tojson(response.data);
     }
     catch(e){
      throw Exception(e);
     }
  }

  Future<Articlesmodels> GetWithCetgory (String cetgory) async {
      try{
        Response response  = await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=$cetgory&apiKey=c3d35ea71666482fa2269d6841329c7e");
      return Articlesmodels.Tojson(response.data);
      }
      catch(e){
        throw Exception(e);
      }
  }
}
