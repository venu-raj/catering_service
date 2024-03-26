import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class SnacksMenuDetails extends StatelessWidget {
  const SnacksMenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> tableData = [
      [
        "WELCOME DRINK",
        "Lemon mint (or) Lemon ginger (or) Fruit punch (or) Soft drink (Fruti/Mirinda/Pepsi/Coke)",
      ],
      [
        "STARTERS",
        "+ Mini Samosa + Gobi manchurian (or) Baby corn manchurian",
      ],
      [
        "ROLL",
        "Veg Roll (or) Schezwan Roll",
      ],
      [
        "SNACKS",
        "French fries (or) Potato Chips",
      ],
      [
        "PASTA",
        "White sause (or) Red sause",
      ],
      [
        "NOODLES",
        "Veg noodles (or) Schzewan noodles",
      ],
      [
        "CHATS",
        "Pani puri (or) Masala puri (or) Sev puri (or) Papdi chat (or) Corn chat",
      ],
      [
        "ICE CREAM",
        "Venilla (or) Chocolate (or) Butterscotch",
      ],
      [
        "SWEET",
        "Gulab jamoon (or) Gazar Halwa (or) Ladoo",
      ],
      [
        "COUNT\n30 Plates\n50 Plates\n70 Plates\n100 Plates",
        "PRICE\nRs. 12,600/-\nRs. 16,500/-\nRs. 21,500/-\nRs. 29,000/-",
      ],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "Snacks Catering Menu",
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
