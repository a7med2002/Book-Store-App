import 'package:book_store/Widgets/primaryButton.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 1000,
            height: 550,
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Image.asset(
                  "Assets/Images/books.png",
                  width: 250,
                  height: 230,
                ),
                const SizedBox(height: 70),
                Text("E - Book Store",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Theme.of(context).colorScheme.background)),
                const SizedBox(height: 15),
                Text(
                  textAlign: TextAlign.center,
                  "Here you can find best books in the world, the latgest number of books n the world.",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.background),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Disciaimer",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground)),
                SizedBox(height: 15),
                Text(
                    "n publishing you can find best books in the world, the latgest number of books n the world, the latgest number of books n the world.",
                    style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ),
          const Spacer(),
          PrimaryButton(title: "CONTINUE", onTap: () {})
        ],
      ),
    );
  }
}
