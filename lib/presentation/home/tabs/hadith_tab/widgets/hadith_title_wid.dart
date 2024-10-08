import 'package:flutter/material.dart';
import '../../../../../core/utilis/routes_manager.dart';
import '../hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadithItem});

  HadithItem hadithItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.hadithDetailsRout,
          arguments: hadithItem,
        );
      },
      child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(hadithItem.title,
                style: Theme.of(context).textTheme.titleSmall),
          )),
    );
  }
}