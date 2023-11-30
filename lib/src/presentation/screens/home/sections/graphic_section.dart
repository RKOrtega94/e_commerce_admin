import 'package:e_commerce_admin/src/data/models/_models.dart';
import 'package:e_commerce_admin/src/data/static/sales_report.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphicSection extends StatelessWidget {
  const GraphicSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AreaChartModel> tdSales = todaySales;
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 250,
      child: Material(
        elevation: 2,
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text("Ventas de hoy",
                style: Theme.of(context).textTheme.titleLarge),
            Expanded(
              child: SfCartesianChart(
                primaryXAxis: NumericAxis(
                  labelFormat: '{value} hs',
                ),
                primaryYAxis: NumericAxis(
                  labelFormat: '\${value}',
                ),
                series: <ChartSeries>[
                  AreaSeries<AreaChartModel, dynamic>(
                    dataSource: tdSales,
                    xValueMapper: (AreaChartModel data, _) => data.label,
                    yValueMapper: (AreaChartModel data, _) => data.value,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
