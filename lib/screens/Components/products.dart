import 'package:apple_shop/Models/productModel.dart';
import 'package:apple_shop/provider/cartProvider.dart';
import 'package:apple_shop/provider/categoryProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class products extends StatelessWidget {
  // const products({super.key});
  List allproducts = getproducts().getProduct();

  @override
  Widget build(BuildContext context) {
    String cate = context.watch<categoryProvider>().category;
    List selected =
        allproducts.where((element) => element.category == cate).toList();

    return SliverPadding(
      key: Key("padding"),
      padding: EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverGrid.count(
        key: Key("silever"),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
        children: [
          ...selected.map(
            (e) => Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(69, 151, 149, 149),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 20,
                      color: Color.fromARGB(41, 37, 37, 37),
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    child: Center(
                      child: Image.asset(
                        "${e.image}",
                        width: 130,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        child: Column(children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: double.infinity,
                            child: Text(
                              e.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: 100,
                                child: Text(
                                  "\$ ${e.price.toString()}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: GestureDetector(
                                    onTap: () {
                                      context.read<cartProvider>().addToCart(e);
                                    },
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
