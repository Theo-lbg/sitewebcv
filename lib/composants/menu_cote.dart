
import 'package:flutter/material.dart';
import 'package:sitewebtheo/composants/animation_progression.dart';
import 'package:sitewebtheo/composants/competences.dart';
import 'package:sitewebtheo/composants/mes_infos.dart';
import 'package:sitewebtheo/composants/zone_infos_text.dart';
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
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                       const Zoneinfotext(title: "Adresse",text: "46 Rue de Mons"),
                       const Zoneinfotext(title: "Ville",text: "59570 La Longueville"),
                       const Zoneinfotext(title: "Age", text: "20 ans"),
                       const competences(),
                         
                           
                      
                    
                          
                       
                    ],
                  ),
                  
              )
            )
        ],
      )
      );
  }
}

