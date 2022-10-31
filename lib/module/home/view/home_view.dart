import 'package:fhe_template/core.dart';
import 'package:fhe_template/module/home/widget/Xcart_product.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[400]!,
                        ),
                      ),
                      child: Row(
                        children: [
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
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.email_outlined,
                        size: 32.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 150.0,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/736x/59/fa/9a/59fa9aa7b305b8ce6bf25dd2269d742e.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraint) {
                  List menus = [
                    {
                      "icon": "assets/icon/seafood.png",
                      "label": "Seafood",
                      "onTap": () {},
                    },
                    {
                      "icon": "assets/icon/fruit.png",
                      "label": "Fruits",
                      "onTap": () {},
                    },
                    {
                      "icon": "assets/icon/bread.png",
                      "label": "Bakery",
                      "onTap": () {},
                    },
                    {
                      "icon": "assets/icon/vegetable.png",
                      "label": "Vegetable",
                      "onTap": () {},
                    },
                    {
                      "icon": "assets/icon/chicken.png",
                      "label": "Meats",
                      "onTap": () {},
                    },
                    {
                      "icon": "assets/icon/frozen.png",
                      "label": "Frozen",
                      "onTap": () {},
                    },
                    {
                      "icon": "assets/icon/mortar.png",
                      "label": "Herbs",
                      "onTap": () {},
                    },
                    {
                      "icon": "assets/icon/products.png",
                      "label": "Daily Food",
                      "onTap": () {},
                    },
                  ];

                  return Wrap(
                    children: List.generate(
                      menus.length,
                      (index) {
                        var item = menus[index];

                        var size = constraint.biggest.width / 4;

                        return SizedBox(
                          width: size,
                          height: size,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blueGrey,
                              animationDuration:
                                  const Duration(milliseconds: 1000),
                              backgroundColor: Colors.transparent,
                              splashFactory: InkSplash.splashFactory,
                              shadowColor: Colors.transparent,
                              elevation: 0.0,
                            ),
                            onPressed: () => item["onTap"](),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  item["icon"],
                                  width: 48.0,
                                  height: 48.0,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "${item["label"]}",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              SubTitleList(
                  navigatorPush: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecommentScreenView()),
                    );
                  },
                  title: "Recomment for You"),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                height: 200.0,
                child: ListView.builder(
                  itemCount: ItemServices.product.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = ItemServices.product[index];
                    double discount = double.parse(item['price'].toString());
                    double price = item['price'] as double;
                    var discountValue = (discount / 100) * price;
                    var finalPrice = price - discountValue;
                    String data = finalPrice.toString().substring(1, 5);

                    return XcardProduct(
                      onChanged: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailView(
                                    item: item,
                                  )),
                        );
                      },
                      discount: data,
                      item: item,
                    );
                  },
                ),
              ),
              Wrap(
                children: const [],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
