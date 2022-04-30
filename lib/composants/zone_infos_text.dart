import 'package:flutter/material.dart';
import 'package:sitewebtheo/constants.dart';

class Zoneinfotext extends StatelessWidget {
  const Zoneinfotext({
    Key? key, this.title, this.text,
   
  }) : super(key: key);

  final String? title,text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2 ),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [ 
            Text( 
                title!,
                  style: 
                    const TextStyle(
                      color: Colors.white,
                    ),
          
          ),
          Text(text!),
          ]
          ),
        );
  }
}