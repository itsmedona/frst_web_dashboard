import 'package:dashboard_application/core/constants/color_constant.dart';
import 'package:dashboard_application/core/data/employee_details_data.dart';
import 'package:dashboard_application/view/widgets/custom_card_widget.dart';
import 'package:dashboard_application/view/widgets/responsive.dart';
import 'package:flutter/material.dart';

class EmployeeDetailsCard extends StatelessWidget {
  const EmployeeDetailsCard({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    final emplDetails = EmployeeDetailsData();

    return GridView.builder(
      itemCount: emplDetails.employeeData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              emplDetails.employeeData[index].icon,
              width: 60,
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                emplDetails.employeeData[index].value,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              emplDetails.employeeData[index].title,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
