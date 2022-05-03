// ignore_for_file: unnecessary_string_escapes

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sitewebtheo/Pages/main/HomePage.dart';
import 'package:sitewebtheo/accueil/Text_animer.dart';
import 'package:sitewebtheo/accueil/banniere_page.dart';
import 'package:sitewebtheo/accueil/mesprojets.dart';
import 'package:sitewebtheo/accueil/projet.dart';
import 'package:sitewebtheo/constants.dart';


class accueilpage extends StatelessWidget {
  const accueilpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const HomePage(enfant: [
        Bannierepageaccueil(),
         mesprojets(),
          
    ],);
  }
}

