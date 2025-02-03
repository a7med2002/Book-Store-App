import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String bookUrl;
  final VoidCallback onTap;
  const BookCard(
      {super.key,
      required this.title,
      required this.bookUrl,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: SizedBox(
          width: 125,
          height: 230,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.1),
                        offset: Offset(2, 2),
                        blurRadius: 7,
                        spreadRadius: 5,
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(bookUrl, width: 120, height: 180),
                ),
              ),
              SizedBox(height: 5),
              Text(title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
      ),
    );
  }
}
