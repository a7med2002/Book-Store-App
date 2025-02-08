import 'package:book_store/Config/colors.dart';
import 'package:book_store/Controller/pdfController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    PdfController pdfConntroller = Get.put(PdfController());

    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: backgroundColor,
          ),
          title: Text("book title",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: backgroundColor)),
          centerTitle: true,
          backgroundColor: primaryColor),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pdfConntroller.pdfViewerKey.currentState!.openBookmarkView();
        },
        child: Icon(Icons.bookmark,
            color: Theme.of(context).colorScheme.background),
      ),
      body: SfPdfViewer.network(
        'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
        key: pdfConntroller.pdfViewerKey,
      ),
    );
  }
}
