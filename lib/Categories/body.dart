import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.firstIcon, required this.value,
  }) : super(key: key);
  final String title;
  final String value;
  final String subTitle;
  final firstIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text.rich(
            TextSpan(text: title, style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff0666666),
                fontSize: 18),
                children: [TextSpan(text: value,style: const TextStyle(
              color: Color(0xff72545b),
              fontSize: 16,
              fontWeight: FontWeight.bold,

            ))]),

          ),
          subtitle: Text(
            subTitle,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xffa37a88),
                fontSize: 15),
          ),
          leading: Icon(
            firstIcon,
            size: 35,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 25,
          ),
        ),
      ),
    );
  }
}
