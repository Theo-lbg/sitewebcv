import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sitewebtheo/accueil/text_coder_flutter.dart';
import 'package:sitewebtheo/constants.dart';


class Textanimer extends StatelessWidget {
  const Textanimer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          const Textcoderflutter(),
          const SizedBox(width: defaultPadding/2,),
          AnimatedTextKit(
            animatedTexts: [ TyperAnimatedText("Mon site Web responsive et application mobile. ", speed: const Duration(milliseconds: 65)),
            TyperAnimatedText("Premier site web réalisé ! ", speed: const Duration(milliseconds: 65)),
            TyperAnimatedText("Découvrez moi ! ", speed: const Duration(milliseconds: 65)),
              
            ],
            ),
            const Textcoderflutter(),
            const SizedBox(width: defaultPadding/2,),

        ],
      ),
    );
  }
}
