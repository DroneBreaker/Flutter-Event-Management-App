import 'package:eventioo/widgets/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppText(
              title: "Hey! Welcome",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            AppText(
              title: "This is the DroneBreaker's Home Page",
              fontSize: 15,
            ),
          ],
        ),
      ),
    );
  }
}
