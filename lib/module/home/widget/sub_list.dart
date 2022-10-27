import 'package:flutter/material.dart';

class SubTitleList extends StatefulWidget {
  final Function() navigatorPush;
  final String? title;

  const SubTitleList({
    Key? key,
    required this.navigatorPush,
    this.title,
  }) : super(key: key);

  @override
  State<SubTitleList> createState() => _SubTitleListState();
}

class _SubTitleListState extends State<SubTitleList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "${widget.title}",
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: widget.navigatorPush,
          child: const Text(
            "See More",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
