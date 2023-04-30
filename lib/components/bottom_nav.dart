import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  // final ValueChanged<int> onTabChange;
  
 MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    const gNav = GNav(
// functionality
      // onTabChange: (value) => onTabChange!(value),

      activeColor: Colors.pink,
      mainAxisAlignment: MainAxisAlignment.center,
      tabBackgroundColor: Color.fromARGB(255, 211, 209, 209),
      tabActiveBorder: Border.symmetric(),
      tabBorderRadius: 20,
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: 'Bag',
          textStyle: TextStyle(
            fontSize: 15,
            color: Colors.pink,
          ),
        ),
      ],
      // selectedIndex: 0,
      // onTabChange: index,
    );
    return Container(
      margin: const EdgeInsets.all(25),
      child: gNav,
    );
  }
}
