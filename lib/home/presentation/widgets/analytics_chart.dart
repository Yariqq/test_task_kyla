import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

const _chartHeight = 150.0;
const _minimumXValue = 0.0;
const _maximumXValue = 30.0;
const _xInterval = 15.0;
const _minimumYValue = 0.0;
const _maximumYValue = 10.0;
const _statisticLineRadius = 12.0;
const _statisticLineWidth = 0.4;
const _upperLineWidth = 1.0;

const _dashArrayValues = [10.0, 10.0];
const _analyticsLinesValues = [
  SeriesData(1, 4),
  SeriesData(3, 2),
  SeriesData(5, 5),
  SeriesData(7, 7),
  SeriesData(9, 8),
  SeriesData(11, 8),
  SeriesData(13, 7),
  SeriesData(15, 9),
  SeriesData(17, 5),
  SeriesData(19, 7),
  SeriesData(21, 1),
  SeriesData(23, 2),
  SeriesData(25, 6),
  SeriesData(27, 5),
  SeriesData(29, 8),
];
const _upperLineValues = [
  SeriesData(30, 6),
  SeriesData(0, 6),
];

class AnalyticsChart extends StatelessWidget {
  const AnalyticsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _chartHeight,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0.0,
        primaryXAxis: NumericAxis(
          axisLine: const AxisLine(width: 0.0),
          majorGridLines: const MajorGridLines(width: 0.0),
          minimum: _minimumXValue,
          maximum: _maximumXValue,
          interval: _xInterval,
        ),
        primaryYAxis: NumericAxis(
          isVisible: false,
          minimum: _minimumYValue,
          maximum: _maximumYValue,
        ),
        series: <CartesianSeries<SeriesData, int>>[
          ColumnSeries<SeriesData, int>(
            borderRadius: const BorderRadius.all(
              Radius.circular(_statisticLineRadius),
            ),
            pointColorMapper: (series, index) {
              if (series.price > 6.0) {
                return Colors.blue;
              }

              if (series.price <= 6.0 && series.price > 3.0) {
                return Colors.grey;
              }

              return Colors.indigo;
            },
            width: _statisticLineWidth,
            dataSource: _analyticsLinesValues,
            xValueMapper: (SeriesData series, _) => series.day,
            yValueMapper: (SeriesData series, _) => series.price,
          ),
          LineSeries<SeriesData, int>(
            dashArray: _dashArrayValues,
            color: Colors.grey,
            width: _upperLineWidth,
            dataSource: _upperLineValues,
            xValueMapper: (SeriesData series, _) => series.day,
            yValueMapper: (SeriesData series, _) => series.price,
          ),
        ],
      ),
    );
  }
}

class SeriesData {
  final int day;
  final double price;

  const SeriesData(this.day, this.price);
}
