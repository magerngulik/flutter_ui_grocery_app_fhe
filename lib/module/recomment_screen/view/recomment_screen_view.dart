import 'package:fhe_template/core.dart';
import 'package:fhe_template/module/recomment_screen/widget/cart_recomment.dart';
import 'package:flutter/material.dart';

class RecommentScreenView extends StatefulWidget {
  const RecommentScreenView({Key? key}) : super(key: key);

  Widget build(context, RecommentScreenController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Recomment For You",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              ListView.builder(
                itemCount: ItemServices.product.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = ItemServices.product[index];
                  return XCartRecommendet(
                    item: item,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<RecommentScreenView> createState() => RecommentScreenController();
}
