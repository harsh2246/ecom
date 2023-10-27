import 'package:ecom/widgets/AllItemsWidget.dart';
import 'package:ecom/widgets/HomeBottomNavBar.dart';
import 'package:ecom/widgets/RowItemsWidget.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            //custom app bar
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: const Icon(
                      Icons.sort,
                      size: 30,
                      color: Color(0xFF475269),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ]),
                      child:  badges.Badge(
                        badgeColor: Colors.redAccent,
                        padding: const EdgeInsets.all(7),
                        badgeContent: const Text("3",
                        style: TextStyle(color: Colors.white),
                        ),
                        child: const Icon(
                        Icons.notifications,
                        size: 30,
                        color: Color(0xFF475269),
                        ),
                      )
                      ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal:25),
              height: 55,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                  )
                ]
              ),
              child: Row(
                children: [
                  Container(
                    width: 250,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search"
                      ),
                    ),
                  ),
                  const SizedBox(width: 25,),
                  const Icon(
                      Icons.search,
                      size: 27,
                      color: Color(0xFF475269),
                    )
                ],
              ),
            ),
            const SizedBox(height: 30,),
            const RowItemsWidget(),
            const SizedBox(height: 20,),
            const AllItemsWidget(),
            
          ],
          
        )
        ),
        bottomNavigationBar:const HomeBottomNavBar(),
      ),
    );
  }
}
