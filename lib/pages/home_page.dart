import 'package:flutter/material.dart';
import 'package:news_app/providers/home_provider.dart';
import 'package:news_app/utils/article_item.dart';
import 'package:news_app/utils/my_drawer.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = context.read<Homeprovider>();

    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      drawer: Mydrawer(),
      body: Consumer<Homeprovider>(
        builder: (context, myType, child) {
          if (pro.resualt == null) {
            pro.getData();
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
