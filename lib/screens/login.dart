// import 'package:eventioo/screens/register.dart';
import 'package:eventioo/screens/events.dart';
import 'package:eventioo/widgets/app_text.dart';
import 'package:eventioo/widgets/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // precacheImage(const AssetImage("assets/login.jpg"), context);
    return SafeArea(
      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/login.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.8)),
          child: Form(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 260.0),
                  child: AppText(
                    title: "LOGIN",
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
                          hintText: "Email Address",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                              const EdgeInsets.only(top: 2, left: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          suffixIcon: const Icon(Icons.person)),
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
                  height: 20,
                ),
                Button(
                  onTap: () => {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const EventsPage(),
                    //   ),
                    // ),
                  },
                  title: "Login",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const AppText(
                      title: "Don't have an account?",
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
