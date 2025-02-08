import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBackbutton extends StatelessWidget {
  const MyBackbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        Text("Back",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary))
      ],
    );
  }
}
