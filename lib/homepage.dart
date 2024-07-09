import 'package:eventioo/screens/login.dart';
import 'package:eventioo/widgets/app_text.dart';
import 'package:eventioo/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 520.0, left: 90, right: 90),
                child: SizedBox(
                  height: 40,
                  child: AppText(
                    title: "Hey! Welcome",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 85.0, right: 80),
                child: SizedBox(
                  height: 60,
                  child: AppText(
                    title:
                        "We help plan events of your choice. Just tell us how you want it and it shall be delivered. ",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  child: Button(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  ),
                },
                title: 'Get Started',
                fontSize: 18,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
