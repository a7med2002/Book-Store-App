import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String bokkUrl;
  final String author;
  final int price;
  final double rating;
  final int numberOfRating;
  final VoidCallback onTap;
  const BookTile(
      {super.key,
      required this.title,
      required this.bokkUrl,
      required this.author,
      required this.price,
      required this.rating,
      required this.numberOfRating,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.2),
                        offset: Offset(2, 2),
                        blurRadius: 7,
                        spreadRadius: 2,
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(bokkUrl, width: 120, height: 180),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, maxLines: 2, style: Theme.of(context).textTheme.bodyLarge),
                    SizedBox(height: 10),
                    Text("By: $author",
                        style: Theme.of(context).textTheme.labelMedium),
                    SizedBox(height: 16),
                    Text("Price: Free",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color:
                                    Theme.of(context).colorScheme.secondary)),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "Assets/Icons/star-svgrepo-com.svg",
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 5),
                        Text("$rating",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground)),
                        SizedBox(width: 5),
                        Text("($numberOfRating ratings)",
                            style: Theme.of(context).textTheme.labelMedium)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
