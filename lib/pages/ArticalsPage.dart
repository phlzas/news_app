import 'package:flutter/material.dart';
import 'package:news_app/providers/ArticalsProvider.dart';
import 'package:news_app/utils/Ariticaltem.dart';
import 'package:provider/provider.dart';

class Articalspage extends StatelessWidget {
  String Cetagory;
  Articalspage({super.key, required this.Cetagory});

  @override
  Widget build(BuildContext context) {
    final pro = context.read<Articalsprovider>();

    return Scaffold(
      appBar: AppBar(title: Text(Cetagory)),
      body: Consumer<Articalsprovider>(
        builder: (context, myType, child) {
          if (pro.resualt == null) {
            pro.Getdata(Cetagory);
            return Center(child: CircularProgressIndicator());
          } else {
            final data = pro.resualt!.json;

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              itemCount: pro.resualt?.json.length,
              itemBuilder: (BuildContext context, int index) {
                return Ariticaltem(data: data[index]);
              },
            );
          }
        },
      ),
    );
  }
}
