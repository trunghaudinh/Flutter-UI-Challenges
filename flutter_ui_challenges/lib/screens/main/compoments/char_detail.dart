import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/core/theme/color.theme.dart';
import 'package:flutter_uii_challenges/core/theme/layout.theme.dart';

class ChartDetail extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin / 2,
                right: defaultMargin / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.red,
                        size: 14,
                      ),
                      SizedBox(
                        width: defaultMargin / 2,
                      ),
                      Text(
                        'Lower: \$10.567',
                        style: TextStyle(color: iconColor),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.blue,
                        size: 14,
                      ),
                      SizedBox(
                        width: defaultMargin / 2,
                      ),
                      Text(
                        'Lower: \$10.567',
                        style: TextStyle(color: iconColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                LineChart(
                  LineChartData(
                    minX: 0,
                    maxX: 11,
                    minY: 0,
                    maxY: 6,
                    titlesData: FlTitlesData(
                      show: false,
                    ),
                    axisTitleData: FlAxisTitleData(
                      show: false,
                    ),
                    gridData: FlGridData(
                      show: false,
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 3),
                          FlSpot(2.6, 2),
                          FlSpot(3.7, 5),
                          FlSpot(6.8, 2.5),
                          FlSpot(8, 4),
                          FlSpot(9.5, 3),
                          FlSpot(11, 4),
                        ],
                        isCurved: true,
                        colors: gradientColors,
                        barWidth: 3,
                        // dotData: FlDotData(show: false),
                        belowBarData: BarAreaData(
                          show: true,
                          colors: gradientColors
                              .map((color) => color.withOpacity(0.3))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: defaultMargin/2,
                    bottom: defaultMargin/2 ,
                    child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.yellow,
                        size: 14,
                      ),
                      SizedBox(
                        width: defaultMargin / 2,
                      ),
                      Text(
                        '1 BTC = \$49.50',
                      )
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
