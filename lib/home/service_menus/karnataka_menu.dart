import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class KarnatakaMenuDetails extends StatelessWidget {
  const KarnatakaMenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> tableData = [
      [
        "WELCOME DRINK",
        "Lemon mint (or) Lemon ginger (or) Fruit punch (or) soft drinks (Fruti/Mirinda/Pepsi/Coke)",
      ],
      [
        "SWEET",
        "Obbattu/Holige(Bele/Coconut) (or) Jamoon (or) Carrot Halwa (or) Kumblekayi Halwa (or) Chakkara Pongali (or) Payasa (or) Laddu (or) Badusha (or) Rasgulla (or) Jangiri",
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
        "Badanekayi palya (or) Tomato palya (or) Bendekayi palya (or) Eerekayi palya (or) Batani palya (or) Sorekayi palya (or) Alu Sagu (or) Paneer curry (or) Mixed veg kurma (or) Channa masala",
      ],
      [
        "FLAVOURED RICE",
        "Ghee Rice (or) Jeera rice (or) Fried Rice (or) Bisibele bath (or) Menthe bath (or) Tomato Bath (or) Vangi Bath (or) Veg Biriyani (or) Veg Pulav (or) Peas Pulav (or) Palak pulav +Raitha (or) Kurma",
      ],
      [
        "RICE & SAMBAR",
        "WHITE RICE + Sambar & Rasam + Mosru (or) Mosranna (or) Majjige",
      ],
      [
        "DRY VEG PALYA",
        "Bendekayi (or) Badanekayi (or) Beans (or) Cabbage (or) Beetroot (or) Alu (or) Chigdikayi",
      ],
      [
        "BHAJI / BONDA / VADE",
        "Masala Vade (or) Menasinakayi Bajji (or) Mysore bonda (or) Badanekayi bajji (or) Alu bonda",
      ],
      [
        "ICE CREAM",
        "Vanilla (or) Chocolate (or) Butterscotch",
      ],
      [
        "EXTRAS",
        "Salt, Appala, Pickle(Mango/Lemon), Ghee & Banana",
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
            "Karnataka Style Catering Menu",
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
                  TableBorder.all(color: Pallete.greyColor.withOpacity(0.2)),
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
