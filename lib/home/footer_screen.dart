import 'package:catering_service_website/home/responsive.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isMobile(context) ? 500 : 400,
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Responsive.isMobile(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/logos/webicons.png",
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                    const Text("Ambika Catering Services"),
                    const Text("Whitefield, Bangalore."),
                    const Text("Karnataka-560066"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Follow Us On'),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/logos/facebook.png",
                          height: 25,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          "assets/logos/googleblack.png",
                          height: 25,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          "assets/logos/instagram.png",
                          height: 25,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          "assets/logos/treads.png",
                          height: 25,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          "assets/logos/xblack.png",
                          height: 25,
                        ),
                      ],
                    ),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('+91XXXXXXXXXX'),
                    Text('+91XXXXXXXXXX'),
                    Text('Gmail Us AAAAAA@gmail.com'),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/logos/webicons.png",
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                    const Text("Ambika Catering Services"),
                    const Text("Whitefield, Bangalore."),
                    const Text("Karnataka-560066"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Follow Us On'),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          "assets/logos/facebook.png",
                          height: 25,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          "assets/logos/googleblack.png",
                          height: 25,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          "assets/logos/instagram.png",
                          height: 25,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          "assets/logos/treads.png",
                          height: 25,
                        ),
                        const SizedBox(width: 15),
                        Image.asset(
                          "assets/logos/xblack.png",
                          height: 25,
                        ),
                      ],
                    ),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('+91XXXXXXXXXX'),
                    Text('+91XXXXXXXXXX'),
                    Text('Gmail Us AAAAAA@gmail.com'),
                  ],
                )
              ],
            ),
    );
  }
}
