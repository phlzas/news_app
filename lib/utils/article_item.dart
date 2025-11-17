import 'package:flutter/material.dart';
import 'package:news_app/models/articles_models.dart';
import 'package:news_app/pages/webview_page.dart';

class ArticleItem extends StatelessWidget {
  final Article data;
  const ArticleItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: SizedBox(
              height: 200,
              width: 200,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(data.description),
                    Text(data.author),
                    Text(data.publishedAt),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Webviewpage(url: data.url),
                        ),
                      ),
                      child: Text(
                        data.url,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Close"),
              ),
            ],
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Center(
              child: data.urlToImage == ''
                  ? Container(
                      height: 200,
                      width: 200,
                      color: Colors.grey,
                      child: Icon(Icons.image),
                    )
                  : SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.network(
                        data.urlToImage,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                         Container(
                          height: 200,
                          width: 200,
                          color: Colors.grey,
                          child: Icon(Icons.image),
                        ),
                      ),
                    ),
            ),
            Text(data.title, style: TextStyle(fontWeight: FontWeight.bold)),

            Flexible(child: Text(data.publishedAt.substring(2, 7))),
          ],
        ),
      ),
    );
  }
}
