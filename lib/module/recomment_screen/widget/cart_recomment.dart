import 'package:flutter/material.dart';

class XCartRecommendet extends StatefulWidget {
  final Map? item;

  const XCartRecommendet({
    Key? key,
    this.item,
  }) : super(key: key);

  @override
  State<XCartRecommendet> createState() => X_CartRecommendetState();
}

class X_CartRecommendetState extends State<XCartRecommendet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80.0,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "${widget.item!['photo']}",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: Stack(children: [
              Container(
                height: 20.0,
                width: 30,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      5.0,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    "${widget.item!['discount']}%",
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Text(
                    "${widget.item!['product_name']}",
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "${widget.item!['weight']}${widget.item!['unit']}",
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.item!['price']}",
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "0.17",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
