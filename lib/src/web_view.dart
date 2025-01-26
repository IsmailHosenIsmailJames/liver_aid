import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          onDownloadStartRequest: (controller, downloadStartRequest) async {
            await launchUrl(downloadStartRequest.url,
                mode: LaunchMode.externalApplication);
          },
          initialUrlRequest: URLRequest(
            url: WebUri.uri(
              Uri.parse(
                'https://jenpharliveraid.com/',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
