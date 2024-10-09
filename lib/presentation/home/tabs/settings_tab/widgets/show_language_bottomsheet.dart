import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowLanguageBottomsheet extends StatelessWidget {
  const ShowLanguageBottomsheet ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      // padding: EdgeInsets.all(12),
      child: Container(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Arabic",style: Theme.of(context).textTheme.bodyMedium,),
                Icon(Icons.check,size: 30,color: Theme.of(context).primaryColor,),
              ],
            ),

            SizedBox(height: 20,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("English",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:Colors.black),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
