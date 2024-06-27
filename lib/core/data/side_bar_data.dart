import 'package:dashboard_application/model/side_bar_model.dart';
import 'package:flutter/material.dart';

class SideBarData {
  final menu = const <SideBarModel>[
    SideBarModel(icon: Icons.dashboard, title: 'Dashboard'),
    SideBarModel(icon: Icons.person, title: 'Profile'),
    SideBarModel(icon: Icons.settings, title: 'Settings'),
  ];
}