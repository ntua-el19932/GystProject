import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/shopping list/add_shoppingItem.dart';
import 'package:gyst/templates/shopping list/shop_items.dart';
import 'package:gyst/templates/shopping list/shop.dart';
import 'package:gyst/styles/button.dart';

class ShoppingListPage extends StatefulWidget {
  const ShoppingListPage({Key? key}) : super(key: key);

  @override
  State<ShoppingListPage> createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  final itemToBuy = Shop.shoppingList();

  void shopChanged(Shop index) {
    setState(() {});
    index.bought = !index.bought;
  }

  void deleteShopItem(String id) {
    setState(() {
      itemToBuy.removeWhere((item) => item.id_s == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List",
            style: TextStyle(
              color: Colors.black,
            )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Icon(
            Icons.shopping_cart_rounded,
            color: black,
          ),
          Icon(Icons.check_box_outline_blank, color: const Color(0xFF8787C1))
        ],
        centerTitle: true,
        backgroundColor: const Color(0xFF8787C1),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  for (Shop todo1 in itemToBuy)
                    ShopItem(
                      shop_item: todo1,
                      shopChanged: shopChanged,
                      delete_shopping: deleteShopItem,
                    ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShopNew()));
                  },
                  label: const Text("Add New Task"),
                  //focusColor: dark,
                  style: addNew,
                  icon: const Icon(
                    Icons.add,
                    color: white,
                    size: 50,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
