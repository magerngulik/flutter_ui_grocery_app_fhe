import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class MainScreenGroceryView extends StatefulWidget {
  const MainScreenGroceryView({Key? key}) : super(key: key);

  Widget build(context, MainScreenGroceryController controller) {
    controller.view = this;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          "James Brian",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: const [
                        Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                            child: Text(
                              "15",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[200]!,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: null,
                          decoration: const InputDecoration.collapsed(
                            filled: true,
                            fillColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            hintText: "Search",
                          ),
                          onFieldSubmitted: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 180.0,
                  child: ListView.builder(
                    itemCount: ItemServices.product.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var item = ItemServices.product[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: CartProductGrocery(
                          item: item,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 40.0,
                  child: ListView.builder(
                    itemCount: controller.item.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var item = controller.item[index];
                      return InkWell(
                        onTap: () {
                          controller.categorySelected = item.toString();
                          controller.setState(() {});
                        },
                        child: Container(
                          width: 100.0,
                          margin: const EdgeInsets.only(
                            left: 10.0,
                          ),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: (controller.categorySelected != item)
                                  ? Colors.white
                                  : Colors.grey[200],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                              border: (controller.categorySelected == item)
                                  ? const Border()
                                  : Border.all(
                                      width: 2.0,
                                      color: Colors.grey[200]!,
                                    )),
                          child: Center(
                            child: Text(
                              "$item",
                              style: TextStyle(
                                color: (controller.categorySelected == item)
                                    ? Colors.black
                                    : Colors.grey,
                                fontSize: 11.0,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 180.0,
                  child: ListView.builder(
                    itemCount: ItemServices.product.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var item = ItemServices.product[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailGroceryView(
                                      item: item,
                                    )),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CartProductGroceryFavorite(item: item),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<MainScreenGroceryView> createState() => MainScreenGroceryController();
}
