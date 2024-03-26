import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class AndraStyleMenuDetails extends StatelessWidget {
  const AndraStyleMenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> tableData = [
      [
        "WELCOME DRINK",
        "Lemon mint (or) Lemon ginger (or) Fruit punch (or) soft drinks (Fruti/Mirinda/Pepsi/Coke)",
      ],
      [
        "SWEET",
        "Bobbattu (Dal/Coconut) (or) Jamoon (or) Carrot Halwa (or) Gummadikaya Halwa (or) Chakkara Pongali (or) Payasam (or) Laddu (or) Badusha (or) Ariselu",
      ],
      [
        "VEG STARTER",
        "Mini Samosa (or) Baby Corn Manchurian (or) Gobi Manchurian (or) Veg Roll (or) Schezwan Roll",
      ],
      [
        "INDIAN BREAD",
        "Poori (or) Chapathi (or) Rumali Roti (or) Masala Roti – (On spot preparation)",
      ],
      [
        "VEG GRAVY",
        "Gutti Vankaya curry (or) Bendakaya curry (or) Beerakaya curry (or) Batani curry (or) Sorakaya curry (or) Alu Sagu (or) Paneer curry (or) Mixed veg kurma (or) Channa masala",
      ],
      [
        "FLAVOURED RICE",
        "Ghee Rice (or) Jeera rice (or) Fried Rice (or) Bisibele bath (or) Menthe bath (or) Tomato Bath (or) Vangi Bath (or) Veg Biriyani (or) Veg Pulav (or) Peas Pulav (or) Palak pulav +Raitha (or) Kurma",
      ],
      [
        "RICE & PAPPU",
        "WHITE RICE + Palakura pappu (or) Tomato pappu (or) Palak+Tomato Pappu (or) Beerakaya pappu (or) Mudda pappu (or) Mamidikayi pappu + Sambar (or) Rasam + Perugu (or) Perugannam (or) Majjiga",
      ],
      [
        "DRY VEG VEPUDU",
        "Bendayakaya vepudu (or) Vankaya vepudu (or) Beans vepudu (or) Cabbage vepudu (or) Beetroot Vepudu (or) Dondakaya vepudu (or) Alu vepudu",
      ],
      [
        "BHAJI / BONDA / VADA",
        "Masala Vada (or) Mirapakaya Bajji (or) Mysore bonda (or) Vankaya bajji (or) Alu bonda",
      ],
      [
        "ICE CREAM",
        "Vanilla (or) Chocolate (or) Butterscotch",
      ],
      [
        "EXTRAS",
        "Salt, Appadam, Gongura/Mango/Lemon pickle, Ghee & Banana",
      ],
      [
        "COUNT\n30 Plates\n50 Plates\n70 Plates\n100 Plates",
        "PRICE\nRs. 12,600/-\nRs. 16,500/-\nRs. 21,500/-\nRs. 29,000/-",
      ]
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "Andra Style Catering Menu",
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
