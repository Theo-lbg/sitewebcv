import 'package:flutter/material.dart';
import 'package:sitewebtheo/constants.dart';


class Textcoderflutter extends StatelessWidget {
  const Textcoderflutter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(
      text: "<", 
      children: [
        TextSpan(
          text: "With flutter",
          style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"), 
          ]
          )
          );
  }
}