import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/providers/articals_provider.dart';
import 'package:news_app/providers/home_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Homeprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) =>  Articalsprovider() ,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home:  Homepage(),
      ),
    );
  }
}
