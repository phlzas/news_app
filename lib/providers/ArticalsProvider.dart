import 'package:flutter/material.dart';
import 'package:news_app/models/ArticlesModels.dart';
import 'package:news_app/services/ArticalesService.dart';

class Articalsprovider extends ChangeNotifier {

  Articlesmodels ?  resualt;
  Future Getdata(String cetgory) async{
      resualt = await Articalesservice().GetWithCetgory(cetgory);
      notifyListeners();
      return resualt;
  }
}