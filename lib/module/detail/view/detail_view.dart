import 'package:fhe_template/module/home/widget/Xcart_recomendation.dart';
import 'package:flutter/material.dart';
import '../../../services/item_services.dart';
import '../controller/detail_controller.dart';

class DetailView extends StatefulWidget {
  Map? item;
  DetailView({this.item, Key? key}) : super(key: key);

  Widget build(context, DetailController controller) {
    controller.view = this;

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                margin: const EdgeInsets.only(left: 20.0, top: 10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                  border: Border.all(
                    width: 2.0,
                    color: Colors.green,
                  ),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 20.0,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Hero(
                tag: "${item!['photo']}",
                child: Container(
                  height: 300.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "${item!['photo']}",
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          5.0,
                        ),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "1Kg",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          5.0,
                        ),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "10%",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "New Product",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${item!['price']}/${item!['unit']}",
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 15.0, decoration: TextDecoration.lineThrough),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "\$${item!['price']}",
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              5.0,
                            ),
                          ),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.green,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              5.0,
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              5.0,
                            ),
                          ),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.green,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Product Details",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${item!['description']}",
                  textAlign: TextAlign.left,
                  maxLines: 6,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Maybe You Likes",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const Divider(),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  itemCount: ItemServices.product.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = ItemServices.product[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: XcardRecomendation(
                        onChanged: () {},
                        discount: null,
                        item: item,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 100.0,
          decoration: const BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      5.0,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.shopping_basket_outlined,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                height: 40.0,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Buy",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DetailView> createState() => DetailController();
}
