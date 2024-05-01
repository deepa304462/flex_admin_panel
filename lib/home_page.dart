import 'package:flex_admin_panel/constants/colors.dart';
import 'package:flex_admin_panel/menu_items/group_events_menu_items.dart';
import 'package:flex_admin_panel/menu_items/swipe_events_menu_items.dart';
import 'package:flutter/material.dart';

import 'constants/images.dart';
import 'constants/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(ColorConstant.buttonColor),
                  fixedSize: const MaterialStatePropertyAll(Size(154, 51)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
              child: Text("DASHBOARD",
                  style: Styles.textWith14with800(Colors.black)),
              onPressed: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    fixedSize: const MaterialStatePropertyAll(Size(240, 41)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.button_icon,
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text("Swipe Events",
                        style: Styles.textWith14with700(ColorConstant.gray)),
                  ],
                ),
                onPressed: () {
                  _onItemTapped(0);
                },
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    fixedSize: const MaterialStatePropertyAll(Size(240, 41)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.button_icon,
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text("Group Events",
                        style: Styles.textWith14with700(ColorConstant.gray)),
                  ],
                ),
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    fixedSize: const MaterialStatePropertyAll(Size(240, 41)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.button_icon,
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text("Chatroom mode",
                        style: Styles.textWith14with700(ColorConstant.gray)),
                  ],
                ),
                onPressed: () {
                  _onItemTapped(2);
                },
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    fixedSize: const MaterialStatePropertyAll(Size(240, 41)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.button_icon,
                      width: 14,
                      height: 14,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text("Payout",
                        style: Styles.textWith14with700(ColorConstant.gray)),
                  ],
                ),
                onPressed: () {
                  _onItemTapped(3);
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Center(
              child: Container(
                color: Colors.white,
                height: 512,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  children: const [
                  SwipeMenuItems(),
                    GroupMenuItems(),
                   Placeholder(),
                  Placeholder(),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll(ColorConstant.buttonColor),
                  fixedSize: const MaterialStatePropertyAll(Size(236, 42)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
              child: Text("Explore More",
                  style: Styles.textWith14with500(Colors.black)),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          )

        ],
      ),
    );
  }
}
