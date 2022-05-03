
import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sitewebtheo/composants/animation_progression.dart';
import 'package:sitewebtheo/composants/language.dart';
import 'package:sitewebtheo/composants/mes_points_fort.dart';
import 'package:sitewebtheo/composants/mes_infos.dart';
import 'package:sitewebtheo/composants/profil_perso.dart';
import 'package:sitewebtheo/composants/zone_infos_text.dart';
import 'package:sitewebtheo/constants.dart';

class MenuCote extends StatelessWidget {
  const MenuCote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
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
                         const Zoneinfotext(title: "Tél",text: "06/47/12/27/70",),
                         const Zoneinfotext(title: "Mes diplomes",text: "Bac STI2D, avec mention",),
                         const Zoneinfotext(title: "",text: "Dut informatique en Apprentissage",),
                         const Zoneinfotext(title: "Email",text: "theo.lebegue@icloud.com",),
                         const competences(),
                          const Langagedev(),
                          const ProfilPerso(),
                          const Divider(),
                          const SizedBox(height: defaultPadding/2,),
                          TextButton(
                          onPressed: () {},
                          child:FittedBox(
                            child: Row(children: [
                              Text("Télécharger mon CV", style: TextStyle (color: Theme.of(context).textTheme.bodyText1!.color,)
                              ),
                              const SizedBox(width: defaultPadding/2),
                              SvgPicture.asset("assets/icons/download.svg"),
                             ],
                             ),
                          )
                          ),
                         Container(
                           margin: const EdgeInsets.only(top: defaultPadding),
                           color: const Color(0xFF24242E),
                           child: Row(
                             children: [
                               const Spacer(),
                             IconButton(onPressed: () { }, icon: SvgPicture.asset("assets/icons/github.svg")),
                             IconButton(onPressed: () { }, icon: SvgPicture.asset("assets/icons/linkedin.svg")),
                             const Spacer(),
                             ]
                             ),
                           
                           )
                                                  
                      ],
                    ),
                    
                )
              )
          ],
        ),
      )
      );
  }
}

