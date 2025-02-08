import 'package:book_store/Pages/Book%20Details/Widgets/bookActionBtn.dart';
import 'package:book_store/Pages/Book%20Details/Widgets/headerWidget.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About book",
                      style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(height: 8),
                  Text(
                      "n puplishing and graphic design, n puplishing in the statre of the book, n puplishing and graphic design, n puplishing in the statre of the book, n puplishing and graphic design.",
                      style: Theme.of(context).textTheme.labelSmall),
                  SizedBox(height: 28),
                  Text("About Author",
                      style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(height: 8),
                  Text(
                      "n puplishing and graphic design, n puplishing in the statre of the book, n puplishing and graphic design, n puplishing in the statre of the book, n puplishing and graphic design.",
                      style: Theme.of(context).textTheme.labelSmall)
                ],
              ),
            ),
            BookActionButton(),
          ],
        ),
      ),
    );
  }
}
