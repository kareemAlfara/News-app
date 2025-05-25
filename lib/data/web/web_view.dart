import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// class WebViewScreen extends StatefulWidget {
//   final String url;


//   const WebViewScreen({Key? key, required this.url}) : super(key: key);

//   @override
//   State<WebViewScreen> createState() => _WebViewScreenState();
// }

// class _WebViewScreenState extends State<WebViewScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       appBar: AppBar(backgroundColor: Colors.deepOrange,) ,
//       body:webview(
//         initialUrl:  widget.url,
        
//         ),
//     );
//   }
// }
class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key, required this.url});
  final String url;
  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Al kareem News',style: TextStyle(color: Colors.greenAccent),)),
      body: WebViewWidget(controller: _controller),
    );
  }
}
