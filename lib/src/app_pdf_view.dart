import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class AppPdfView extends StatelessWidget {
  final String pdfUrl;
  const AppPdfView({super.key, required this.pdfUrl});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF View"),
      ),
      body: SfPdfViewer.network(
        pdfUrl,
      ),
    );
  }
}
