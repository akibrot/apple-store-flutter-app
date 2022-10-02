import 'package:apple_shop/provider/cartProvider.dart';
import 'package:apple_shop/screens/Components/cartListComponent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var items = ["1", "2", "3", "4", "5"];
  // String? value = 1;

  @override
  Widget build(BuildContext context) {
    List cartItems = context.watch<cartProvider>().cartItems;
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: (() {
          Navigator.pushNamed(context, "\checkout");
          Provider.of<cartProvider>(context, listen: false).getTotalPrice();
        }),
        child: Container(
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          height: 45,
          child: Center(
            child: Text(
              "Checkout",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("cart items"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // ...cartItems.length > 0
          //     ? {...cartItems.map((e) => cartListComponent(context, e))}
          //     : {Text("No item in your cart ")}
          ...Provider.of<cartProvider>(context).cartItems.length > 0
              ? {...cartItems.map((e) => cartListComponent(context, e))}
              : {
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text(
                      "No Items In Your Cart please add one !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                }
        ],
      ),
    );
  }
}
