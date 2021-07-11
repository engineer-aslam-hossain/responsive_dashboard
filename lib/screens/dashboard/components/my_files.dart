import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant.dart';
import 'package:responsive_dashboard/models/MyFile.dart';
import 'package:responsive_dashboard/responsive.dart';
import 'package:responsive_dashboard/screens/dashboard/components/file_info_card.dart';

class MyFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Add New'),
              icon: Icon(Icons.add),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 1.5,
                  vertical:
                      kDefaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: size.width < 650 ? 2 : 4,
            childAspectRatio: size.width < 650 ? 1.3 : 1,
          ),
          desktop: FileInfoCardGridView(),
          tablet: FileInfoCardGridView(
            childAspectRatio: size.width < 1400 ? 1.1 : 1.2,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  FileInfoCardGridView({
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: demoMyFiles.length,
      shrinkWrap: true,
      itemBuilder: (ctx, indx) => FileInfoCard(info: demoMyFiles[indx]),
    );
  }
}
