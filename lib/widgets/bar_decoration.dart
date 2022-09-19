import 'package:bmi_calc/constants/app_constants.dart';
import 'package:flutter/material.dart';

class BarDecoration extends StatelessWidget {
  List<double> bars = [];
  BarDecoration({Key? key, required this.bars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> barWidgets = [];
    for (int i = 0; i < bars.length; i++) {
      barWidgets.add(
        Row(
          mainAxisAlignment: bars[i].isNegative
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: [
            Container(
              height: 25,
              width: bars[i].abs(),
              decoration: BoxDecoration(
                borderRadius: bars[i].isNegative
                    ? const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                    : const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                color: accentColor,
              ),
            )
          ],
        )
      );
      barWidgets.add(
        const SizedBox(height: 20)
      );
    }
    return Column(
      children: barWidgets,
    );
  }
}
