import 'package:flutter/material.dart';
import 'package:news_app/models/ArticlesModels.dart';
import 'package:news_app/services/ArticalesService.dart';

class Homeprovider extends ChangeNotifier {

  Articlesmodels ?  resualt;
  Future Getdata() async{
      resualt = await Articalesservice().GetEverything();
      notifyListeners();
      return resualt;
  }
}