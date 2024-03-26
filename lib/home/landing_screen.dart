import 'package:catering_service_website/home/responsive.dart';
import 'package:catering_service_website/home/service_menus/service_details_screen_2.dart';
import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          //landing screen
          SizedBox(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.1),
                  child: Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Responsive.isMobile(context)
                            ? Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  child: Image.asset(
                                    "assets/images/homepage_image2.png",
                                    fit: BoxFit.cover,
                                    height: 100,
                                  ),
                                ),
                              )
                            : const SizedBox(
                                height: 0,
                              ),
                        Text(
                          "Your Favorite Food\nDelievered Hot & Fresh",
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
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceDetailsScreen2(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: const Size(200, 50),
                            // padding: const EdgeInsets.symmetric(
                            //     horizontal: 35, vertical: 25),
                            elevation: 0,
                          ),
                          child: Text(
                            "Explore menus",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Responsive.isMobile(context)
                    ? const SizedBox(
                        height: 0,
                      )
                    : Expanded(
                        child: Image.asset(
                          "assets/images/homepage_image2.png",
                          // height: 300,
                          fit: BoxFit.cover,
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
