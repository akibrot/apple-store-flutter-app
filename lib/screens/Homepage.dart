import 'package:apple_shop/provider/cartProvider.dart';
import 'package:apple_shop/provider/categoryProvider.dart';
import 'package:apple_shop/screens/Components/category.dart';
import 'package:apple_shop/screens/Components/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int length = context.read<cartProvider>().cartItems.length;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("apple ethio"),
          centerTitle: true,
          leading: Icon(Icons.apple),
          actions: [
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, "\cart"),
                child: Icon(Icons.shopping_cart)),
            Icon(Icons.person),
            SizedBox(
              width: 12,
            )
          ],
          floating: true,
          expandedHeight: 250,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              child: SizedBox(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 80, bottom: 10, left: 15),
                    child: Container(
                        height: 100,
                        width: 200,
                        child: Image.network(
                          "https://images.macrumors.com/t/u5qFUnuK3qopG8nIsOOX74kgtk8=/1600x0/article-new/2019/02/MR-Future-Products-2020-2.png",
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 80, bottom: 10, left: 20),
                    child: Container(
                      height: 100,
                      width: 200,
                      child: Image.network(
                        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/trade-in-og-202205?wid=1200&hei=630&fmt=jpeg&qlt=95&.v=1649887002751",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 80, bottom: 10, left: 20),
                    child: Container(
                      height: 100,
                      width: 200,
                      child: Image.network(
                        "https://www.albawaba.com/sites/default/files/styles/d08_standard/public/2022-06/shutterstock_1973343692.jpg?h=82f92a78&itok=o0b1ZYvy",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
        ),
        category(context),
        products(),
      ]),
      floatingActionButton:
          Provider.of<cartProvider>(context).cartItems.length > 0
              ? FloatingActionButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, "\cart");
                  },
                  child: Text(Provider.of<cartProvider>(context)
                      .cartItems
                      .length
                      .toString()),
                )
              : null,
    );
  }
}
