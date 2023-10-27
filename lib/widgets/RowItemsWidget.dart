import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowItemsWidget extends StatelessWidget {
  const RowItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Row(
      children: [
        for (int i = 1; i < 5;i++)
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 180, //doubt how height of outer conainer isstill bigger
            decoration: BoxDecoration(
              color: const Color(0xFFF5F9FD),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 20, right: 70),
                      width: 120,
                      height: 110,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 46, 54, 71)
                            .withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Image.asset(
                      "images/$i.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nike Shoe",
                        style: TextStyle(
                          color: Color(0xFF475269),
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Men's shoe",
                        style: TextStyle(
                            color: const Color(0xFF475269).withOpacity(0.8),
                            fontSize: 16),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Text(
                            "\5000Rs",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color(0xFF475269),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              CupertinoIcons.cart_fill_badge_plus,
                              color: Colors.white,
                              size: 25,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ],
    )
    )
    );
  }
}
