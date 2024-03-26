import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class TamilNaduMenuDetails extends StatelessWidget {
  const TamilNaduMenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> tableData = [
      [
        "WELCOME DRINK",
        "Lemon mint (or) Lemon ginger (or) Fruit punch (or) soft drinks (Fruti/Mirinda/Pepsi/Coke)",
      ],
      [
        "SWEET",
        "Poli(Dal/Coconut) (or) Jamoon (or) Carrot Halwa (or) Kashi Halwa (or) Chakkara Pongali (or) Payasam (or) Ladoo (or) Badusha (or) Rasgulla (or) Jangiri",
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
        "Veg Chettinad Curry (or) Poricha Kuzhambu (or) Kootu Curry (or) Thakkali Kuzhambu (or) Vendakkai kulambu (or) Alu Sagu (or) Cauliflower Kurma Kuzhambu (or) Paneer curry (or) Mixed veg kurma (or) Channa masala",
      ],
      [
        "FLAVOURED RICE",
        "Ghee Rice (or) Jeera rice (or) Fried Rice (or) Bisibele bath (or) Menthe bath (or) Tomato Bath (or) Vangi Bath (or) Veg Biriyani (or) Veg Pulav (or) Peas Pulav (or) Palak pulav +Raitha (or) Kurma",
      ],
      [
        "RICE & SAMBAR",
        "WHITE RICE + Sambar & Tomato Rasam + Curd (or) Curd Rice (or) Butter milk",
      ],
      [
        "DRY VEG PORIYAL",
        "Vendakkai (or) Kathirikai (or) Beans (or) Cabbage (or) Beetroot (or) Aviyal (or) Alu (or) Cluster beans",
      ],
      [
        "BHAJI / BONDA / VADA",
        "Parupu Vada (or) Chilli Bajji (or) Mysore bonda (or) Kathirikai bajji (or) Alu bonda",
      ],
      [
        "ICE CREAM",
        "Vanilla (or) Chocolate (or) Butterscotch",
      ],
      [
        "EXTRAS",
        "Salt, Papad, Pickle(Mango/Lemon), Ghee & Banana",
      ],
      [
        'COUNT\n30 Plates\n50 Plates\n70 Plates\n100 Plates',
        'PRICE\nRs. 12,600/-\nRs. 16,500/-\nRs. 21,500/-\nRs. 29,000/-',
      ]
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "Tamil Nadu Style Catering Menu",
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
