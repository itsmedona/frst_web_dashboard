import 'package:dashboard_application/model/employee_details_model.dart';

class EmployeeDetailsData{
  final employeeData = const [
    EmployeeDetailsModel(
        icon: 'assets/images/icons/needstocheck.png', value: "20", title: "New Works"),
    EmployeeDetailsModel(
        icon: 'assets/images/icons/pending.png', value: "82", title: "Pending Works"),
   EmployeeDetailsModel(
        icon: 'assets/images/icons/works_done.png', value: "200", title: "Works Done"),
    EmployeeDetailsModel(icon: 'assets/images/icons/torecheck.png', value: "282", title: "Total Projects"),
  ];
}