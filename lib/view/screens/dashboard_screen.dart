import 'package:dashboard_application/core/constants/color_constant.dart';
import 'package:dashboard_application/core/constants/size_constant.dart';
import 'package:dashboard_application/view/widgets/dashboard_widget.dart';
import 'package:dashboard_application/view/widgets/responsive.dart';
import 'package:dashboard_application/view/widgets/side_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: AppBar(
          elevation: 4,
          titleSpacing: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(color: AppColors.whiteColor),
          ),
          automaticallyImplyLeading: true,
          centerTitle: false,
          title: Text('My Responsive Dashboard',
              style: GoogleFonts.pacifico(
                  fontSize: kDefaultPadding * 2 - kTextPadding,
                  color: AppColors.buttonSuccessColor)),
          actions: [
            //buildSizedboxW(kDefaultPadding),
            Visibility(
              child: Row(
                children: [
                  //buildSizedboxW(kDefaultPadding),
                  //buildSizedboxW(kDefaultPadding),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  //buildSizedboxW(kDefaultPadding),
                ],
              ),
            ),
            //buildSizedboxW(kDefaultPadding),
          ],
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideBar(),
                ),
              ),
            Expanded(
              flex: 5,
              child: DashboardWidget(),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
