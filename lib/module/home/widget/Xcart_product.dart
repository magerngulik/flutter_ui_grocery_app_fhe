import 'package:flutter/material.dart';

class XcardProduct extends StatefulWidget {
  final Function() onChanged;
  final Map? item;
  final String? discount;

  const XcardProduct({
    Key? key,
    this.item,
    this.discount,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<XcardProduct> createState() => _XcardProductState();
}

class _XcardProductState extends State<XcardProduct> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onChanged,
      child: Container(
        height: 200.0,
        width: 150,
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 200.0,
                width: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: "${widget.item!['photo']}",
                      child: Container(
                        height: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(
                              10.0,
                            ),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              "${widget.item!['photo']}",
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "${widget.item!['price']}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.discount ?? "",
                          style: const TextStyle(
                              fontSize: 17.0,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "${widget.item!['description']}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "${widget.item!['weight']}${widget.item!['unit']}",
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 30.0,
                width: 40.0,
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
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
