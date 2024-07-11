import 'package:eventioo/widgets/app_text.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        body: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              AppText(
                title: "Hello Stanley!",
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              AppText(
                title: "Welcome back, hope you are feeling good today.",
                fontSize: 15,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
