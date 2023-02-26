import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/shopping list/shop.dart';

class ShopItem extends StatelessWidget {
  final Shop shop_item;
  final shopChanged;
  final delete_shopping;

  const ShopItem(
      {Key? key,
      required this.shop_item,
      required this.shopChanged,
      required this.delete_shopping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          shopChanged(shop_item);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: white,
        leading: Icon(
            shop_item.bought ? Icons.check_box : Icons.check_box_outline_blank,
            color: dark),
        title: Text(
          shop_item.item!,
          style: TextStyle(
              fontSize: 16,
              color: black,
              decoration: shop_item.bought ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          color: Colors.red,
          icon: const Icon(Icons.delete_rounded),
          iconSize: 18,
          onPressed: () {
            delete_shopping(shop_item.id_s);
          },
        ),
      ),
    );
  }
}
