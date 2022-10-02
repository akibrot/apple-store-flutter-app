import 'package:apple_shop/provider/cartProvider.dart';
import 'package:apple_shop/provider/categoryProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget category(BuildContext context) {
  List<String> cat = ["Mac", "iPhone", "iPad", "Watch", "Mac", "iPhone"];
  String selected = Provider.of<categoryProvider>(context).category;
  return SliverGrid.count(
    crossAxisCount: 1,
    childAspectRatio: 5,
    key: Key("test"),
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 10,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            color: Color.fromARGB(17, 134, 127, 127),
            borderRadius: BorderRadius.circular(8)),
        child: SizedBox(
            child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ...cat.map((e) => Center(
                  child: GestureDetector(
                    onTap: () {
                      context.read<categoryProvider>().changeCategory(e);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: selected == e
                              ? Color.fromARGB(153, 119, 117, 112)
                              : Colors.transparent,
                        ),
                        child: Text(
                          e,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        )),
      )
    ],
  );
}
