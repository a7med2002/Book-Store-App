import 'package:book_store/Config/colors.dart';
import 'package:book_store/Pages/Book%20Page/bookPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: primaryColor,
      ),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.to(() => BookPage());
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  "Assets/Icons/book-svgrepo-com.svg",
                  color: Theme.of(context).colorScheme.background,
                  height: 32,
                ),
                SizedBox(width: 5),
                Text(
                  "READ BOOK",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.background,
                      letterSpacing: 1.2),
                )
              ],
            ),
          ),
          Container(
              width: 3,
              height: 32,
              color: Theme.of(context).colorScheme.background),
          Row(
            children: [
              SvgPicture.asset(
                "Assets/Icons/play-svgrepo-com.svg",
                color: Theme.of(context).colorScheme.background,
                height: 32,
              ),
              SizedBox(width: 5),
              Text(
                "PLAY BOOK",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.background,
                    letterSpacing: 1.2),
              )
            ],
          ),
        ],
      ),
    );
  }
}
