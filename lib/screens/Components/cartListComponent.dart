import 'package:apple_shop/Models/productModel.dart';
import 'package:apple_shop/provider/cartProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget cartListComponent(BuildContext context, e) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      height: 60,
      child: Row(children: [
        Container(
          padding: EdgeInsets.only(left: 5),
          width: 50,
          child: Center(
              child: Image.asset(
            "${e.image}",
            width: 40,
          )),
        ),
        Container(
          padding: EdgeInsets.only(top: 15, left: 20),
          width: 170,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                e.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "\$ ${e.price}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 75, 74, 74)),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 40,
        ),
        // Container(
        //   width: 40,
        //   child: DropdownButton(
        //     value: value,
        //     items: items.map((int items) {
        //       return DropdownMenuItem(
        //         value: items,
        //         child: Text(items.toString()),
        //       );
        //     }).toList(),
        //     onChanged: (value) {
        //       setState(() => {this.value = value});
        //     },
        //   ),
        // ),
        Container(
          width: 50,
          child: GestureDetector(
            onTap: () {
              context.read<cartProvider>().removeFromCart(e);
            },
            child: Icon(
              Icons.delete,
              size: 27,
              color: Colors.red,
            ),
          ),
        )
      ]),
    ),
  );
}
