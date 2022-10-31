import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import '../controller/navigator_grocery_controller.dart';

class NavigatorGroceryView extends StatefulWidget {
  const NavigatorGroceryView({Key? key}) : super(key: key);

  Widget build(context, NavigatorGroceryController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const MainScreenGroceryView(),
            Container(
              color: Colors.red[100],
            ),
            const CartGroceryView(),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.search,
                color: Colors.white,
                size: 35,
              ),
              SizedBox(
                height: 2.0,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: SizedBox(
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.home,
                        color: controller.selectedIndex == 0
                            ? Colors.green
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        controller.selectedIndex = 0;
                        controller.setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite_outline,
                        color: controller.selectedIndex == 1
                            ? Colors.green
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        controller.selectedIndex = 1;
                        controller.setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: controller.selectedIndex == 2
                            ? Colors.green
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        controller.selectedIndex = 2;
                        controller.setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.person_outline,
                        color: controller.selectedIndex == 3
                            ? Colors.green
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        controller.selectedIndex = 3;
                        controller.setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<NavigatorGroceryView> createState() => NavigatorGroceryController();
}
