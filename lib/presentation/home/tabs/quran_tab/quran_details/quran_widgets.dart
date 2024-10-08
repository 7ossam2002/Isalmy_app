import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String verseItem;
   VerseWidget({super.key,required this.verseItem});

  @override
  Widget build(BuildContext context) {
    return Directionality(

      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
        child: Card(
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(verseItem,textAlign :TextAlign.center, style: Theme.of(context).textTheme.titleSmall,),
            ),
          ),
        ),
      ),
    );
  }
}
