import 'package:catering_service_website/home/responsive.dart';
import 'package:catering_service_website/home/service_menus/andra_menu.dart';
import 'package:catering_service_website/home/service_menus/breakfast_menu.dart';
import 'package:catering_service_website/home/service_menus/karnataka_menu.dart';
import 'package:catering_service_website/home/service_menus/north_indian_menu.dart';
import 'package:catering_service_website/home/service_menus/snacks_menus.dart';
import 'package:catering_service_website/home/service_menus/tamil_nadu_menu.dart';
import 'package:catering_service_website/home/service_menus/wedding_menu.dart';
import 'package:flutter/material.dart';

class ServiceDetailsScreen2 extends StatelessWidget {
  const ServiceDetailsScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Responsive.isMobile(context)
                ? const Column(
                    children: [
                      NorthIndianMenuDetails(),
                      KarnatakaMenuDetails(),
                      AndraStyleMenuDetails(),
                      TamilNaduMenuDetails(),
                      SnacksMenuDetails(),
                      BreakfastMenuDetails(),
                      WeddingMenuDetails(),
                    ],
                  )
                : Responsive.isTablet(context)
                    ? const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: NorthIndianMenuDetails()),
                              Expanded(child: AndraStyleMenuDetails()),
                              // MyHomePage(),
                            ],
                          ),
                          Divider(color: Colors.black),
                          Row(
                            children: [
                              Expanded(child: KarnatakaMenuDetails()),
                              Expanded(child: TamilNaduMenuDetails()),
                            ],
                          ),
                          Divider(color: Colors.black),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: SnacksMenuDetails()),
                              Expanded(
                                child: Column(
                                  children: [
                                    BreakfastMenuDetails(),
                                    WeddingMenuDetails(),
                                  ],
                                ),
                              ),
                              // MyHomePage(),
                            ],
                          ),
                        ],
                      )
                    : Responsive.isDesktop(context)
                        ? const Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: NorthIndianMenuDetails()),
                                  Expanded(child: KarnatakaMenuDetails()),
                                  Expanded(child: AndraStyleMenuDetails()),
                                  // MyHomePage(),
                                ],
                              ),
                              Divider(color: Colors.black),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: TamilNaduMenuDetails()),
                                  Expanded(child: SnacksMenuDetails()),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        BreakfastMenuDetails(),
                                        WeddingMenuDetails(),
                                      ],
                                    ),
                                  ),
                                  // MyHomePage(),
                                ],
                              ),
                            ],
                          )
                        : const Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: NorthIndianMenuDetails()),
                                  Expanded(child: KarnatakaMenuDetails()),
                                  Expanded(child: AndraStyleMenuDetails()),
                                  // MyHomePage(),
                                ],
                              ),
                              Divider(color: Colors.black),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: TamilNaduMenuDetails()),
                                  Expanded(child: SnacksMenuDetails()),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        BreakfastMenuDetails(),
                                        WeddingMenuDetails(),
                                      ],
                                    ),
                                  ),
                                  // MyHomePage(),
                                ],
                              ),
                            ],
                          ),
          ],
        ),
      ),
    );
  }
}
