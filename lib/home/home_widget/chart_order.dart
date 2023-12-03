import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:withhalal_int/wigets/app_colors.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Flexible(
        child: LineChart(
          LineChartData(
              maxX: 6,
              minX: 0,
              minY: 0,
              maxY: 80,
              borderData: FlBorderData(show: false),
              gridData: const FlGridData(
                show: false,
              ),
              titlesData: const FlTitlesData(
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    reservedSize: 22,
                    interval: 1,
                    showTitles: false,
                  ),
                ),
                leftTitles: AxisTitles(
                  axisNameSize: 40,
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              lineBarsData: [
                LineChartBarData(
                    isCurved: true,
                    belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              AppColors.primaryBlue.withOpacity(.1),
                              AppColors.primaryWhite.withOpacity(.1),
                            ])),
                    color: AppColors.primaryBlue,
                    dotData: const FlDotData(show: false),
                    spots: const [
                      FlSpot(0, 10),
                      FlSpot(1, 50),
                      FlSpot(2, 40),
                      FlSpot(3, 70),
                      FlSpot(4, 20),
                      FlSpot(5, 30),
                      FlSpot(6, 60),
                    ])
              ]),
        ),
      ),
    );
  }
}
