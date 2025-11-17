import 'package:flutter/material.dart';
import 'package:news_app/providers/articals_provider.dart';
import 'package:news_app/utils/article_item.dart';
import 'package:provider/provider.dart';

class Articalspage extends StatelessWidget {
  final String cetagory;
  const Articalspage({super.key, required this.cetagory});

  @override
  Widget build(BuildContext context) {
    final pro = context.read<Articalsprovider>();

    return Scaffold(
      appBar: AppBar(title: Text(cetagory)),
      body: Consumer<Articalsprovider>(
        builder: (context, myType, child) {
          if (pro.resualt == null) {
            pro.getData(cetagory);
            return Center(child: CircularProgressIndicator());
          } else {
            final data = pro.resualt!.json;

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              itemCount: pro.resualt?.json.length,
              itemBuilder: (BuildContext context, int index) {
                return ArticleItem(data: data[index]);
              },
            );
          }
        },
      ),
    );
  }
}
