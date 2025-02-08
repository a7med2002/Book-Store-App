import 'package:book_store/Component/myBackButton.dart';
import 'package:book_store/Config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      height: 550,
      color: primaryColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyBackbutton(),
              SvgPicture.asset("Assets/Icons/heart-svgrepo-com.svg",
                  color: Theme.of(context).colorScheme.background),
            ],
          ),
          SizedBox(height: 40),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(8, 8),
                      blurRadius: 8,
                      spreadRadius: 5,
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.3))
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("Assets/Images/Give and Take.jpg", width: 150),
            ),
          ),
          SizedBox(height: 25),
          Text("Beach Town : Apocalypse",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.background)),
          SizedBox(height: 8),
          Text("Author : N30 ray",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .background
                      .withOpacity(0.7))),
          SizedBox(height: 20),
          Text(
              "n puplishing and graphic design, n puplishing in the statre of the book.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Theme.of(context)
                      .colorScheme
                      .background
                      .withOpacity(0.7))),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Rating",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .background
                              .withOpacity(0.7))),
                  SizedBox(height: 5),
                  Text("4.7",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.background))
                ],
              ),
              Column(
                children: [
                  Text("Pages",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .background
                              .withOpacity(0.7))),
                  SizedBox(height: 5),
                  Text("203",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.background))
                ],
              ),
              Column(
                children: [
                  Text("Language",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .background
                              .withOpacity(0.7))),
                  SizedBox(height: 5),
                  Text("ENG",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.background))
                ],
              ),
              Column(
                children: [
                  Text("Audio",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .background
                              .withOpacity(0.7))),
                  SizedBox(height: 5),
                  Text("2 hr",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.background))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
