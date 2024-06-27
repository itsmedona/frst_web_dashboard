import 'package:dashboard_application/view/widgets/bar_graph_widget.dart';
import 'package:dashboard_application/view/widgets/employee_details_card.dart';
import 'package:dashboard_application/view/widgets/header_widget.dart';
import 'package:dashboard_application/view/widgets/line_graph_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            const EmployeeDetailsCard(),
            const SizedBox(height: 18),
            const LineGraph(),
            const SizedBox(height: 18),
            const BarGraphCard(),
            const SizedBox(height: 18),
            //if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}
