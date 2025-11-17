import 'package:flutter/material.dart';
import 'package:news_app/models/articles_models.dart';
import 'package:news_app/services/articales_service.dart';

class Articalsprovider extends ChangeNotifier {

  Articlesmodels ?  resualt;
  Future getData(String cetgory) async{
      resualt = await Articalesservice().getWithCetgory(cetgory);
      notifyListeners();
      return resualt;
  }
}