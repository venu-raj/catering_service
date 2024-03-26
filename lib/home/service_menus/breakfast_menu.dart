import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class BreakfastMenuDetails extends StatelessWidget {
  const BreakfastMenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> tableData = [
      [
        "SWEET",
        "Jamoon / Dry Jamoon / Carrot Halwa / Kasi Halwa / Laddu / Kesari Bath / Pineapple Kesari Bath",
      ],
      [
        "BREAKFAST",
        "Idli+Vada / Plain Dosa / Masala Dosa / Set Dosa / Onion Dosa / Rava Dosa / Adai / Veg upma / Karabath / Coconut Sevai / Lemon Sevai / Rava Idli / Pongal / Poori / Chappathi / Kara bath+Chutney+Sambar",
      ],
      [
        "DRINK",
        "Coffee / Tea / Horlicks / Bournvita / Boost / Badam Milk",
      ],
      [
        "COUNT\n30 Plates\n40 Plates\n50 Plates",
        "PRICE\nRs. 6000/-\nRs. 7500/-\nRs. 9000/-",
      ],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "Breakfast Catering Menu",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Table(
              border:
                  TableBorder.all(color: Pallete.greyColor.withOpacity(0.15)),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: tableData.map((row) {
                return TableRow(
                  children: row.map((cell) {
                    return TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          cell,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  }).toList(),
                );
              }).toList(),
            ),
          ), //
        ],
      ),
    );
  }
}
