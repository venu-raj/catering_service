import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class NorthIndianMenuDetails extends StatelessWidget {
  const NorthIndianMenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> tableData = [
      [
        "WELCOME DRINK",
        "Lemon mint (or) Lemon ginger (or) Fruit moctail (or) Soft drinks (Fruti/Mirinda/Pepsi/Coke)(OR)",
      ],
      [
        "VEG SOUP",
        "Tomato soup (or) Babycorn soup (or) Mixed veg soup",
      ],
      [
        "SWEET",
        "Gulab Jamoon (or) Dry Jamoon (or) Kala jamoon (or) Gaajar ka Halwa (or) Jalebi (or) Bombay Halwa (or) Besan ka Laddu (or) Mung Dal Halwa (or) Boondi (or) Milk kheer (or) Semiya kheer (or) Sabudana kheer (or) Jack fruit kheer (or) Rava kheer",
      ],
      [
        "VEG STARTER",
        "Gobi Manchurian (or) Gobi chilli (or) Gobi 65 (or) Baby Corn Manchurian (or) Baby corn chilli (or) Hakka Noodles (or) Vegetable Manchurian (or) Mushroom Manchoorian (or) Hara bhara kebab (or) Paneer chilli (or) Paneer Pakora (or) Aloo kebab (or) Aloo Tikki (or) Mini samosa (or) Veg Roll (or) Schezwan Roll",
      ],
      [
        "INDIAN BREAD",
        "Poori (or) (or) Chapathi (or) Rumali Roti (or) Masala Roti (or) (3500/- Extra) Tanduri Naan (or) Butter naan (or) Garlic naan (or) Paneer/Onion kulcha (or) Tandoori roti – (On spot preparation)",
      ],
      [
        "VEG GRAVY",
        "Paneer butter masala (or) Kadai paneer (or) Paneer bahari (or) Mix Veg curry (or) Paneer Tikka Masala (or) Channa Masala (or) Navratan Kurma (or) Kadai Sabji (or) Malai kofta (or) Green Peas Masala (or) Aloo Gobhi Matar (or) Bhindi Masala (or) Palak Paneer (or) Matar Paneer",
      ],
      [
        "FLAVOURED RICE",
        "Ghee Rice (or) Jeera rice (or) Fried Rice (or) Veg Biriyani (or) Veg Pulav (or) Peas Pulav (or) Palak pulav + Raitha (or) Kurma",
      ],
      [
        "RICE & DHAL",
        "WHITE RICE+Dhal fry (or) Dhal makhni (or) Rajma (or) Dhal palak (or) Dhal Tadka (or) Methi dhal (or) Tomato dhal+ Curd (or) Dahi Vada (or) Curd Rice",
      ],
      [
        "DRY VEG",
        "Aloo Mutter Dry (or) Aloo Gobi Dry (or) Aloo Jeera Dry (or) Mixed Veg Dry (or) Bhendi Dry (or) Beans Dry (or) Cabbage Dry",
      ],
      [
        "SALAD",
        "Green Salad (or) Finger Salad",
      ],
      [
        "ICE CREAM",
        "Vanilla (or) Chocolate (or) Butterscotch",
      ],
      [
        "EXTRAS",
        "Salt, Papad & Pickle",
      ],
      [
        "COUNT\n30 Plates\n50 Plates\n70 Plates\n100 Plates",
        "PRICE\nRs. 12,600/-\nRs. 16,500/\nRs. 21,500/\nRs. 29,000/-",
      ],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "North Indian Style Catering Menu",
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
