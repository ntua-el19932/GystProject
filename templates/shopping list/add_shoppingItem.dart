import 'package:flutter/material.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/styles/colors.dart';
import 'package:gyst/templates/shopping list/shop.dart';

class ShopNew extends StatefulWidget {
  const ShopNew({Key? key}) : super(key: key);

  @override
  State<ShopNew> createState() => AddToShoppingList();
}

class AddToShoppingList extends State<ShopNew> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: light,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Add to your Shopping List',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        foregroundColor: black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
              decoration: BoxDecoration(
                  color: button, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                controller: shopController,
                decoration: const InputDecoration(
                  hintText: ('  Add a new item in your shopping list'),
                  border: InputBorder.none,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 200)),
            ElevatedButton(
              onPressed: () {
                //addToDoItem(todoController.text);
                Navigator.of(context).pop();
              },
              style: saveButton,
              child: const Text('Save', style: TextStyle(color: black)),
            ),
          ],
        ),
      ),
    );
  }
}
