import 'package:flutter/material.dart';
import 'package:sitewebtheo/composants/mes_infos.dart';
import 'package:sitewebtheo/constants.dart';

class MenuCote extends StatelessWidget {
  const MenuCote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Mesinfos(),
          Expanded(
            child: 
              SingleChildScrollView(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      Row(children: const [ Text("Ville")]),
                      Row(children: const [ Text("Age:")],)
                    ],
                  ),
                  
              )
            )
        ],
      )
      );
  }
}

