import 'package:flutter/material.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/shopping list/shop_items.dart';
import 'package:gyst/templates/shopping list/shop.dart';


class ShoppingListPage extends StatefulWidget {
  const ShoppingListPage({Key? key}) : super(key: key);

  @override
  State<ShoppingListPage> createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  final shopController = TextEditingController();
  final shoppingList = Shop.shoppingList();

  void addNewItem(String newItem) {
    setState(() {
      shoppingList.add(Shop(
          id_s: DateTime.now().millisecondsSinceEpoch.toString(),
          item: newItem));
    });
    shopController.clear();
  }

  void shopChanged(Shop index) {
    setState(() {});
    index.bought = !index.bought;
  }

  void deleteShopItem(String id) {
    setState(() {
      shoppingList.removeWhere((item) => item.id_s == id);
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
        actions: const [
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
                  for (Shop todo1 in shoppingList)
                    ShopItem(
                      shop_item: todo1,
                      shopChanged: shopChanged,
                      delete_shopping: deleteShopItem,
                    ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 20, right: 20, left: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: shopController,
                        decoration: const InputDecoration(
                          hintText: 'Add to your list',
                        ),
                      ),
                    )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20, right: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: dark,
                            minimumSize: const Size(60, 60),
                            elevation: 10),
                        onPressed: () {
                          addNewItem(shopController.text);
                        },
                        child: const Text(
                          '+',
                          style: TextStyle(color: white, fontSize: 40),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
