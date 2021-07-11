import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant.dart';
import 'package:responsive_dashboard/responsive.dart';
import 'package:responsive_dashboard/screens/dashboard/components/header.dart';
import 'package:responsive_dashboard/screens/dashboard/components/my_files.dart';
import 'package:responsive_dashboard/screens/dashboard/components/recent_files.dart';
import 'package:responsive_dashboard/screens/dashboard/components/storage_files.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                      if (Responsive.isMobile(context))
                        Container(
                          width: double.infinity,
                          child: StorageFiles(),
                        ),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                if (!Responsive.isMobile(context)) StorageFiles(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
