import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Homepage extends StatefulWidget {

  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse('https://github.com/Phillip4reall/Hng12'));
    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Github Repository' ,style: TextStyle(fontSize: 20),),),
      backgroundColor: Colors.white,
      body: WebViewWidget(controller: _controller)
    );
  }
}