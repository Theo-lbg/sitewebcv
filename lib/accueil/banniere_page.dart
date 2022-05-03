import 'package:flutter/material.dart';
import 'package:sitewebtheo/accueil/Text_animer.dart';
import 'package:sitewebtheo/constants.dart';
import 'package:sitewebtheo/responsive.dart';



class Bannierepageaccueil extends StatelessWidget {
  const Bannierepageaccueil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
    aspectRatio: Responsive.isMobile(context) ? 2.5 :3,
    child: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset("assets/images/server.png", 
        fit: BoxFit.cover,),
        Container(color: darkColor.withOpacity(0.66),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
                Text("Découvrez moi ! \nDans mes projets et mon parcours !", 
                style: 
                Responsive.isDesktop(context) ? Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.bold, 
                color: Colors.white) :
                Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold, 
                color: Colors.white) ,
                ),
              if(Responsive.isMobileLarge(context))
              const SizedBox(height: defaultPadding /2,),

                const Textanimer()
            ],

          ),
        )
      ],
    ),
    
    );
  }
}

