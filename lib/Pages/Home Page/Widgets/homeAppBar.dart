import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.dashboard,
              size: 30,
            ),
            color: Theme.of(context).colorScheme.background),
        Text("E-Book",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Theme.of(context).colorScheme.background)),
        CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.error,
          child: Center(
              child: Text("A",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.background))),
        ),
      ],
    );
  }
}
