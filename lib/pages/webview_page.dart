import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webviewpage extends StatefulWidget {
  final String url;
  const Webviewpage({super.key, required this.url});

  @override
  State<Webviewpage> createState() => _WebviewpageState();
}

class _WebviewpageState extends State<Webviewpage> {
  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..loadRequest(Uri.parse(widget.url));
    return Scaffold(
      appBar: AppBar(title: const Text("Webview")),
      body: WebViewWidget(controller: controller),
    );
  }
}
