import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
              horizontal: BorderSide(color: Theme.of(context).dividerColor,width: 2)
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

                  child: Center(child: Text(AppLocalizations.of(context)!.chapterName,style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600,fontSize: 25,),textAlign: TextAlign.center,textDirection: TextDirection.rtl,))),

              VerticalDivider(color: Theme.of(context).dividerColor,
              thickness: 2,
                width: 2,
              ),


              Expanded(
                  flex: 2,
                  child: Center(child: Text(AppLocalizations.of(context)!.versesNumber,style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600,fontSize: 25,),textAlign: TextAlign.center,textDirection: TextDirection.rtl,))),

            ],
          ),
        ),
      ) ,
    );
  }
}
