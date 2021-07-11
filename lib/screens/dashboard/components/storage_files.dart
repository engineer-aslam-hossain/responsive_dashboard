import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant.dart';
import 'package:responsive_dashboard/screens/dashboard/components/chart.dart';
import 'package:responsive_dashboard/screens/dashboard/components/storage_info_card.dart';

class StorageFiles extends StatelessWidget {
  const StorageFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Storage Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Chart(),
            StorageInfoCard(
              title: 'Documents Files',
              svgSrc: 'assets/icons/Documents.svg',
              amountOfFiles: '1.3GB',
              numberOfFiles: 1234,
            ),
            StorageInfoCard(
              title: 'Media Files',
              svgSrc: 'assets/icons/media.svg',
              amountOfFiles: '15.3GB',
              numberOfFiles: 1234,
            ),
            StorageInfoCard(
              title: 'Other Files',
              svgSrc: 'assets/icons/folder.svg',
              amountOfFiles: '10.3GB',
              numberOfFiles: 1234,
            ),
            StorageInfoCard(
              title: 'Unknown Files',
              svgSrc: 'assets/icons/unknown.svg',
              amountOfFiles: '5.3GB',
              numberOfFiles: 1234,
            ),
          ],
        ),
      ),
    );
  }
}
