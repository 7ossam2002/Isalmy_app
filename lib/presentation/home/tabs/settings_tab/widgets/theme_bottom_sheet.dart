import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

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
                Text("Light",style: Theme.of(context).textTheme.labelLarge,),
                Icon(Icons.check,size: 30,),
              ],
            ),

            SizedBox(height: 20,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dark",style: Theme.of(context).textTheme.displayMedium,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
