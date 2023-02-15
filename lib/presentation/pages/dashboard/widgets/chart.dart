import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:will_app/domain/entities/response/maintenance_find_made_per_day.dart';
import 'package:will_app/presentation/cubit/maintenance_find_made_per_day/maintenance_find_made_per_day_cubit.dart';
import 'package:will_app/presentation/pages/widgets/loading_indicator.dart';
import 'package:will_app/presentation/utils/preferences/token.dart';
import 'package:will_app/presentation/pages/widgets/error_message.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({super.key});

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  @override
  void initState() {
    super.initState();

    TokenPreferences.getToken().then(
      (value) => _getMaintenanceFindMadePerDay(context, value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaintenanceFindMadePerDayCubit,
        MaintenanceFindMadePerDayState>(
      builder: (context, state) {
        if (state is MaintenanceFindMadePerDayLoading) {
          return const LoadingIndicator();
        }

        if (state is MaintenanceFindMadePerDaySuccess) {
          return CartesianChartWidget(
            chartData: state.maintenanceFindMadePerDay.info,
          );
        }

        if (state is MaintenanceFindMadePerDayFailure) {
          return ErrorMessage(
            message: state.message,
            onPressed: () => TokenPreferences.getToken().then(
              (value) => _getMaintenanceFindMadePerDay(context, value),
            ),
          );
        }

        return const Center(
          child: Text('Error'),
        );
      },
    );
  }

  void _getMaintenanceFindMadePerDay(BuildContext context, String? token) {
    final moviePopularCubit = context.read<MaintenanceFindMadePerDayCubit>();
    moviePopularCubit.getMaintenanceFindMadePerDay(token);
  }
}

class CartesianChartWidget extends StatelessWidget {
  const CartesianChartWidget({super.key, required this.chartData});

  final List<Info> chartData;

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(text: 'Mantenimientos realizados'),
      primaryXAxis: DateTimeAxis(
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        interval: 2,
        majorGridLines: const MajorGridLines(width: 0),
        intervalType: DateTimeIntervalType.months,
      ),
      primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(color: Colors.transparent),
        interval: 1,
      ),
      series: [
        LineSeries<Info, DateTime>(
          animationDuration: 2500,
          dataSource: chartData,
          xValueMapper: (Info info, _) => info.date,
          yValueMapper: (Info info, _) => info.count,
          width: 2,
          markerSettings: const MarkerSettings(isVisible: true),
        )
      ],
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }
}
