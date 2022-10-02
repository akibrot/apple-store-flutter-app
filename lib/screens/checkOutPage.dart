import 'package:apple_shop/provider/cartProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    int totalItems = context.watch<cartProvider>().cartItems.length;
    double totalPrice = context.watch<cartProvider>().totalPrice;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("checkout"),
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total items",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Text(
                "${totalItems}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Price",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Text(
                "\$ ${totalPrice}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30, left: 20),
          child: Text(
            "Method",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 2,
          crossAxisCount: 2,
          childAspectRatio: 1.3,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(253, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 20,
                      color: Color.fromARGB(41, 255, 255, 255),
                    ),
                  ]),
              child: Center(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWIw3KTVLC-uB9qEPtfUSvVmpVP1GVrbczSF47dM-bBvnfdoaYT4IQ7hMRoEhw1h-W_lo&usqp=CAU")),
            ),
            Container(
              child: Center(
                  child: Image.network(
                "https://businessinfoeth.com/wp-content/uploads/2021/12/photo_2021-12-23_11-48-09.jpg",
                fit: BoxFit.cover,
              )),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(230, 198, 18, 214),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 20,
                      color: Color.fromARGB(41, 37, 37, 37),
                    ),
                  ]),
            ),
          ],
        ))
      ]),
      floatingActionButton: FloatingActionButton(
        elevation: 200,
        backgroundColor: Color.fromARGB(255, 36, 25, 20),
        onPressed: () {},
        child: Text("Pay"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
