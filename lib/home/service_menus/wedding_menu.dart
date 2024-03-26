import 'package:catering_service_website/pallete.dart';
import 'package:flutter/material.dart';

class WeddingMenuDetails extends StatelessWidget {
  const WeddingMenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> tableData = [
      [
        "BREAKFAST",
        "Idly+Vada Mysore Bonda Pineapple Kesari bath Chutney + Sambar Tea & Coffee",
      ],
      [
        "LUNCH",
        "Sabakki Payasa Pacchadi(Mosru Bajji) Kootu & Kosambari Aloo Roast Majjige huli Lemon Rice White Rice Rasam+Curd+Ghee Jangiri Papad & Pickle",
      ],
      [
        "SNACKS",
        "Carrot Halwa Samosa+Kachori Coffee & Tea",
      ],
      [
        "RECEPTION",
        "Welcome Drink+Tomato Soup Masala puri+Pani Puri chats Rasmalai Gobi Manchoori Romali Roti Paneer Butter Masala Veg Pulav+Raitha Mini Masala Dosa+Chutney White Rice Sambar+Rasam Curd Rice+Pickle Veg Salad Ice Cream Beeda, Banana Tambulam",
      ],
      [
        "PRICE",
        "Starts @ Rs. 180/-",
      ],
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "Simple Wedding Catering Menu",
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
