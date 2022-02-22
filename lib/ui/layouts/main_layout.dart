import 'package:administrator/helpers/responsive.dart';
import 'package:administrator/ui/components/sidebar/sidebar.dart';
import 'package:administrator/ui/views/dashboard_view.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (Responsive.isDesktop(context))
                const Expanded(child: Sidebar()),
              const Expanded(flex: 5, child: DashboardView()),
            ],
          ),
        ),
      );
}
