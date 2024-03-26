import 'package:catering_service_website/home/responsive.dart';
import 'package:catering_service_website/home/service_menus/service_details_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:catering_service_website/pallete.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageLinks = [
      "assets/images/andra.png",
      "assets/images/karnataka.png",
      "assets/images/andra.png",
      "assets/images/breskfast.png",
      "assets/images/northindian.png",
      "assets/images/wedding.png",
    ];

    final List<String> titles = [
      "Andra Style Catering",
      "Karnataka Style Catering",
      "Tamilnadu Style Catering",
      "Breakfast Catering",
      "North Indian Style Catering",
      "Wedding Catering",
    ];
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Text(
            "Menus",
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.w900,
                textBaseline: TextBaseline.ideographic),
          ),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
              itemCount: titles.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isMobile(context)
                    ? 1
                    : Responsive.isDesktop(context)
                        ? 3
                        : Responsive.isTablet(context)
                            ? 2
                            : 3,
                childAspectRatio: Responsive.isMobile(context)
                    ? 1.35
                    : Responsive.isTablet(context)
                        ? 1.2
                        : 1.3,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, i) {
                return FeedbackCard(
                  imageLinks: imageLinks,
                  titles: titles,
                  index: i,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FeedbackCard extends StatefulWidget {
  final List<String> imageLinks;
  final List<String> titles;
  const FeedbackCard({
    super.key,
    required this.imageLinks,
    required this.titles,
    required this.index,
  });

  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = const Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ServiceDetailsScreen2(),
          ),
        );
      },
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Pallete.greenColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  image: DecorationImage(
                    image: AssetImage(widget.imageLinks[widget.index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              widget.titles[widget.index],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 8),
            const Column(
              children: [
                // Text(
                //   "Features",
                //   style: TextStyle(fontWeight: FontWeight.bold),
                // ),
                Text(
                  "To Know More Details",
                ),
                Text(
                  "Follow Here",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
