import 'package:dashboard_application/core/constants/color_constant.dart';
import 'package:dashboard_application/model/bar_graph_model.dart';
import 'package:dashboard_application/model/graph_model.dart';

class BarGraphData {
  final data = [
    const BarGraphModel(
        label: "Monthly Overview",
        color: AppColors.buttonSuccessColor,
        graph: [
          GraphModel(x: 0, y: 8),
          GraphModel(x: 1, y: 10),
          GraphModel(x: 2, y: 7),
          GraphModel(x: 3, y: 4),
          GraphModel(x: 4, y: 4),
          GraphModel(x: 5, y: 6),
        ]),
    const BarGraphModel(
        label: "Weekly Overview",
        color: AppColors.buttonFocusColor,
        graph: [
          GraphModel(x: 0, y: 8),
          GraphModel(x: 1, y: 10),
          GraphModel(x: 2, y: 9),
          GraphModel(x: 3, y: 6),
          GraphModel(x: 4, y: 6),
          GraphModel(x: 5, y: 7),
        ]),
    const BarGraphModel(
        label: "Companies Overview",
        color: AppColors.buttonInfoColor,
        graph: [
          GraphModel(x: 0, y: 7),
          GraphModel(x: 1, y: 10),
          GraphModel(x: 2, y: 7),
          GraphModel(x: 3, y: 4),
          GraphModel(x: 4, y: 4),
          GraphModel(x: 5, y: 10),
        ]),
  ];

  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}
