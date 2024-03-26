import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              child: Image.asset(
                "assets/images/Chow-Mein-removebg-preview.png",
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Menu",
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "Browse our traditional menus or let us\ncreate something new for you.",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Pallete.greyColor,
                          fontWeight: FontWeight.normal,
                        ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 30),
                  ListView.builder(
                    itemCount: 3,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Pallete.greyColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Icon(Icons.pin_sharp),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dinner Menu",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  "Browse our traditional menus or let us\ncreate something new for you.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                      ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
