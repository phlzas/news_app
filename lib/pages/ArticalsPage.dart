import 'package:flutter/material.dart';
import 'package:news_app/providers/ArticalsProvider.dart';
import 'package:news_app/providers/HomeProvider.dart';
import 'package:provider/provider.dart';

class Articalspage extends StatelessWidget {
  String Cetagory;
  Articalspage({super.key, required this.Cetagory});

  @override
  Widget build(BuildContext context) {
    final pro = context.read<Articalsprovider>();
    if (pro.resualt == null) {
      pro.Getdata(Cetagory);
      return Center(child: CircularProgressIndicator());
    } else {
      final data = pro.resualt!.json;
      return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Consumer<Articalsprovider>(
          builder: (context, myType, child) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: pro.resualt?.json.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                data[index].urlToImage,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Scrollable(
                        viewportBuilder: (context, position) {
                          return Column(
                            children: [
                              Text(
                                data[index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Flexible(
                                child: Column(
                                  children: [
                                    Flexible(
                                      child: Text(data[index].description),
                                    ),
                                    Flexible(child: Text(data[index].content)),
                                    Flexible(
                                      child: Text(
                                        data[index].publishedAt.substring(1, 6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      );
  }
  }
}