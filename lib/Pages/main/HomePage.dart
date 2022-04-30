import 'package:flutter/material.dart';
import 'package:sitewebtheo/composants/menu_cote.dart';
import 'package:sitewebtheo/constants.dart';


class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center (
      child: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: const MenuCote()
             ),
            Expanded(
              flex: 7,
              child: Container(
              color: Colors.blue ,)
        ),
        ],
    ),
    ),
  )
  );
}


}

