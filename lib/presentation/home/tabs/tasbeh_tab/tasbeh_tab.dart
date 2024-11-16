import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../provider/tasbeh_provider.dart';
import '../../../../provider/theme_provider.dart';

class TasbehTab extends StatefulWidget {
  TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  @override
  Widget build(BuildContext context) {
    //var themeProvider = Provider.of<ThemeProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => TasbehProvider(),
      child: Consumer<TasbehProvider>(
        builder: (context, value, _) {
          var tasbehProvider = Provider.of<TasbehProvider>(context);
          return Center(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    AnimatedRotation(
                        turns: context.watch<TasbehProvider>().turns,
                        duration: const Duration(seconds: 1),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Image.asset(context
                                .watch<ThemeProvider>()
                                .getSebhaBodyTheme())
                        )
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.asset(context
                            .watch<ThemeProvider>()
                            .getSebhaHeadTheme())),
                  ],
                ),
                Text(
                  'عدد التسبيحات',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor.withOpacity(0.6),
                  ),
                  child: Center(
                    child: Text(
                      context.watch<TasbehProvider>().count.toString(),
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<TasbehProvider>().Altasbeeh();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColorLight,
                  ),
                  child: Text(
                    context.watch<TasbehProvider>().tasbehName,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.black),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}