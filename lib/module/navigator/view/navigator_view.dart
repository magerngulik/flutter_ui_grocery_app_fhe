import 'package:fhe_template/module/home/view/home_view.dart';
import 'package:flutter/material.dart';
import '../controller/navigator_controller.dart';

class NavigatorView extends StatefulWidget {
  const NavigatorView({Key? key}) : super(key: key);

  Widget build(context, NavigatorController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const HomeView(),
            Container(
              color: Colors.red[100],
            ),
            Container(
              color: Colors.purple[100],
            ),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          selectedItemColor: Colors.grey[700],
          unselectedItemColor: Colors.grey[500],
          onTap: (index) {
            controller.selectedIndex = index;
            controller.refrest;
          },
          items: const [
            BottomNavigationBarItem(
              label: "Shop",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "Cart",
              icon: Icon(
                Icons.card_travel,
              ),
            ),
            BottomNavigationBarItem(
              label: "My Order",
              icon: Icon(
                Icons.shopping_bag,
              ),
            ),
            BottomNavigationBarItem(
              label: "Account",
              icon: Icon(
                Icons.person,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<NavigatorView> createState() => NavigatorController();
}
