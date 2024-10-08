import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilis/strings_manager.dart';

class ChapterNameWid extends StatelessWidget {
  const ChapterNameWid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
     // padding: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: Theme.of(context).primaryColor,width: 2)
          )
      ),
      child:IntrinsicHeight(
        child: Container(
          color: Colors.green[100],
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              Expanded(
                  flex: 2,

                  child: Center(child: Text(StringsManager.chapterName,style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600,fontSize: 25,),textAlign: TextAlign.center,textDirection: TextDirection.rtl,))),

              VerticalDivider(color: Theme.of(context).primaryColor,
              thickness: 2,
                width: 2,
              ),


              Expanded(
                  flex: 2,
                  child: Center(child: Text(StringsManager.numOfVerses,style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600,fontSize: 25,),textAlign: TextAlign.center,textDirection: TextDirection.rtl,))),

            ],
          ),
        ),
      ) ,
    );
  }
}
