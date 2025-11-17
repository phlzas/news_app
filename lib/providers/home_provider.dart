import 'package:flutter/material.dart';
import 'package:news_app/models/articles_models.dart';
import 'package:news_app/services/articales_service.dart';

class Homeprovider extends ChangeNotifier {

  Articlesmodels ?  resualt;
  Future getData() async{
      resualt = await Articalesservice().getEverything();
      notifyListeners();
      return resualt;
  }
}