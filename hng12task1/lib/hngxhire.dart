import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
class HirePage extends StatefulWidget {

  const HirePage({super.key});

  @override
  State<HirePage> createState() => _HirePageState();
}

class _HirePageState extends State<HirePage> {
  
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse('https://hng.tech/hire/mobile-ui-ux-developers'));
    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('HNGX12 Mobile Hire Page' ,style: TextStyle(fontSize: 20),),),
      backgroundColor: Colors.white,
      body: WebViewWidget(controller: controller)
    );
  }
}