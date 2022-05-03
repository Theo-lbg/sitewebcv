import 'package:flutter/material.dart';
import 'package:sitewebtheo/composants/menu_cote.dart';
import 'package:sitewebtheo/constants.dart';
import 'package:sitewebtheo/responsive.dart';


class HomePage extends StatelessWidget{
  const HomePage({Key? key, required this.enfant}) : super(key: key);

  final List<Widget> enfant;

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: Responsive.isDesktop(context)
    ? null : AppBar(
      backgroundColor: bgColor,
      leading: Builder(builder: (context) => IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.menu), 
      ),
      )
    ),
    drawer: const MenuCote(),
    body: Center (
      child: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
            const Expanded(
              flex: 2,
              child: MenuCote()
             ),
             const SizedBox(width: defaultPadding / 2,),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: 
                Column(
                  children: [
                    ...enfant
                  ]
                  ),
                  )
        ),
        ],
    ),
    ),
  )
  );
}


}

