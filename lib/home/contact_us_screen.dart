import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          // color: Colors.brown.withOpacity(0.3),
          ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "NewsLetter",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 12),
            Text(
              "Fill this simple form to get\nthe best catering services in Bangalore.",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            const ContactBox()
          ],
        ),
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 12),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  String menuDropdownvalue = "Lunch Menu";
  var menuItems = [
    'Lunch Menu',
    'Dinner Menu',
    'Snacks Menu',
    'Breakfast+Lunch Menu',
    'Dinner+Breakfast+Lunch Menu',
  ];
  String styleDropdownvalue = "Karnataka Style";
  var styleItems = [
    'Karnataka Style',
    'North Indian Style',
    'Andhra Style',
    'Tamil Nadu Style',
    'Others Style',
  ];
  String guestsDropdownvalue = '30 to 50 Guests';
  var guestsItems = [
    '30 to 50 Guests',
    '50 to 70 Guests',
    '70 to 100 Guests',
    '100 to 150 Guests',
    '150 to 250 Guests',
    '250 & Above',
  ];
  String functionDropdownvalue = 'House Warming';
  var functionItems = [
    'House Warming',
    'Birthday party',
    'Naming ceremony',
    'baby Shower',
    'Engagement/Reception',
    'Pooja/Traditional Function',
    'Office Party',
    'Other Function',
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        children: [
          SizedBox(
            width: 470,
            child: DropdownButton(
              value: menuDropdownvalue,
              items: menuItems.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  menuDropdownvalue = newValue!;
                });
              },
            ),
          ),
          SizedBox(
            width: 470,
            child: DropdownButton(
              value: styleDropdownvalue,
              items: styleItems.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  styleDropdownvalue = newValue!;
                });
              },
            ),
          ),
          SizedBox(
            width: 470,
            child: DropdownButton(
              value: guestsDropdownvalue,
              items: guestsItems.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  guestsDropdownvalue = newValue!;
                });
              },
            ),
          ),
          SizedBox(
            width: 470,
            child: DropdownButton(
              value: functionDropdownvalue,
              items: functionItems.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  functionDropdownvalue = newValue!;
                });
              },
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Phone Number",
                hintText: "Select Project Budget",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Location",
                hintText: "Enter Your Location",
              ),
            ),
          ),
          SizedBox(
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Description (optional)",
                hintText: "Write some description",
              ),
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: FittedBox(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: const Size(300, 40),
                  elevation: 0,
                ),
                child: Text(
                  "Book Now",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
