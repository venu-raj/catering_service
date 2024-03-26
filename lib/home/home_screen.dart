import 'package:catering_service_website/home/contact_us_screen.dart';
import 'package:catering_service_website/home/footer_screen.dart';
import 'package:catering_service_website/home/landing_screen.dart';
import 'package:catering_service_website/home/second_screen.dart';
import 'package:catering_service_website/home/service_details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            "assets/logos/webicons.png",
            height: 80,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "WhatsApp Us",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LandingScreen(), //yes
            SecondScreen(), //yes
            ServicesScreen(), //yes
            ContactUsScreen(), //yes
            Divider(),
            Footer(), //yes
          ],
        ),
      ),
    );
  }
}
