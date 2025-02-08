import 'package:book_store/Component/bookCard.dart';
import 'package:book_store/Component/bookTile.dart';
import 'package:book_store/Models/data.dart';
import 'package:book_store/Pages/Book%20Details/bookDetails.dart';
import 'package:book_store/Pages/Home%20Page/Widgets/categoryWidget.dart';
import 'package:book_store/Pages/Home%20Page/Widgets/homeAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).colorScheme.primary,
              width: 1000,
              height: 420,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  HomeAppBar(),
                  SizedBox(height: 60),
                  Text("Good Morning✌️Nitish",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.background)),
                  SizedBox(height: 5),
                  Text("Teme to read Book and enhance your knowleage",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.background)),
                  SizedBox(height: 20),
                  Container(
                    width: 1000,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        SizedBox(width: 15),
                        SvgPicture.asset(
                          "Assets/Icons/search-svgrepo-com.svg",
                          width: 25,
                          height: 25,
                        ),
                        SizedBox(width: 15),
                        Flexible(
                            child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here ..",
                              hintStyle:
                                  Theme.of(context).textTheme.labelMedium),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Topics",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.background)),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: dataCategory.map((e) {
                        return CategoryWidget(
                            iconPath: e['bathIcon']!, label: e['label']!);
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trending",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: dataBook.map(
                        (element) {
                          return BookCard(
                              title: element.title!,
                              bookUrl: element.bookurl!,
                              onTap: () {
                                Get.to(() => BookDetails());
                              });
                        },
                      ).toList(),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Your Intrests",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: dataBook
                        .map((element) => BookTile(
                              title: element.title!,
                              bokkUrl: element.bookurl!,
                              author: element.author!,
                              price: element.price!,
                              rating: element.rating!,
                              numberOfRating: element.numberOfRating!,
                              onTap: () {
                                Get.to(() => BookDetails());
                              },
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
