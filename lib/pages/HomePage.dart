import 'package:flutter/material.dart';
import 'package:news_app/providers/HomeProvider.dart';
import 'package:news_app/utils/Ariticaltem.dart';
import 'package:news_app/utils/MyDrawer.dart';
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
            pro.Getdata();
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
