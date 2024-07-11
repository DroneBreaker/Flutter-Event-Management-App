import 'package:eventioo/screens/events.dart';
import 'package:eventioo/screens/login.dart';
import 'package:eventioo/widgets/app_text.dart';
import 'package:eventioo/widgets/button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/login.jpg'),
                  fit: BoxFit.fitHeight,
                  opacity: 0.8)),
          child: Form(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 160.0),
                  child: AppText(
                    title: "REGISTER AN ACCOUNT",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: SizedBox(
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Full Name",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          suffixIcon: const Icon(Icons.mail)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email Address",
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 2, left: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffixIcon: const Icon(Icons.mail)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 2, left: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffixIcon: const Icon(Icons.lock)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Confirm password",
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 2, left: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        suffixIcon: const Icon(Icons.lock)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Button(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EventsPage(),
                      ),
                    ),
                  },
                  title: "Create an account",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: const AppText(
                      title: "Already have an account?",
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
