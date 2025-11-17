import 'package:dio/dio.dart';
import 'package:news_app/models/articles_models.dart';

class Articalesservice {

  Dio dio = Dio();

  Future<Articlesmodels> getEverything () async {
     try{
       Response response  = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=c3d35ea71666482fa2269d6841329c7e");
      return Articlesmodels.fromJson(response.data);
     }
     catch(e){
      throw Exception(e);
     }
  }

  Future<Articlesmodels> getWithCetgory (String cetgory) async {
      try{
        Response response  = await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=$cetgory&apiKey=c3d35ea71666482fa2269d6841329c7e");
      return Articlesmodels.fromJson(response.data);
      }
      catch(e){
        throw Exception(e);
      }
  }
}
