import 'package:catering_service_website/home/responsive.dart';
import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SizedBox(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Responsive.isMobile(context)
                    ? const SizedBox()
                    : Expanded(
                        child: Image.asset(
                          "assets/images/homepage_image1.png",
                          height: 350,
                        ),
                      ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.1),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Responsive.isMobile(context)
                        //     ? SizedBox(
                        //         child: Image.asset(
                        //           "assets/images/homepage_image1.png",
                        //           fit: BoxFit.cover,
                        //           height: 300,
                        //         ),
                        //       )
                        //     : const SizedBox(),
                        const SizedBox(height: 20),
                        Text(
                          "We Believe in Delicious\n& Elegant Food",
                          textAlign: TextAlign.start,
                          style: Responsive.isDesktop(context)
                              ? Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(fontWeight: FontWeight.w900)
                              : Responsive.isMobile(context)
                                  ? Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(fontWeight: FontWeight.w900)
                                  : Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(height: 20),
                        Responsive.isMobile(context)
                            ? Text(
                                "Find out best food in your city for your dream events.\nWe are ready to serve your desire.\nUltimate destination for all\nyour healthy food delievery needs.",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Pallete.greyColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                                textAlign: TextAlign.start,
                              )
                            : Text(
                                "Find out best food in your city for your dream events.\nWe are ready to serve your desire.\nUltimate destination for all your healthy food delievery needs.",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Pallete.greyColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
