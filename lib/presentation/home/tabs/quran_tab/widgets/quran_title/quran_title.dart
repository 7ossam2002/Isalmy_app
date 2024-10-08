import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/core/utilis/routes_manager.dart';

class QuranTitle extends StatelessWidget {
  final String suraTitle;
  final String numOfVerses;
  int index;

  QuranTitle({super.key, required this.suraTitle, required this.numOfVerses, required this.index});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            RoutesManager.quranDetailsRoute,
            arguments: SuraArgs(suraName: suraTitle, index: index),
          );
        },
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  suraTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: VerticalDivider(
                thickness: 3,
                color: Theme.of(context).dividerColor,
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    numOfVerses,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraArgs {
  String suraName;
  int index;

  SuraArgs({required this.suraName, required this.index});
}
