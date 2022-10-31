import 'package:flutter/material.dart';

class CartProductGrocery extends StatefulWidget {
  Map? item;

  CartProductGrocery({Key? key, required this.item}) : super(key: key);

  @override
  State<CartProductGrocery> createState() => _CartProductGroceryState();
}

class _CartProductGroceryState extends State<CartProductGrocery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: 130,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            32.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80.0,
            width: 130.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "${widget.item!['photo']}",
                ),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(
                  32.0,
                ),
              ),
            ),
          ),
          Text(
            "${widget.item!['product_name']}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$${widget.item!['weight']}/kg",
            style: const TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$${widget.item!['weight']}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text(
                "/${widget.item!['unit']}",
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "2",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
