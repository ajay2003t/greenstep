import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Carbon Emission",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/blue.svg",
            title: "Food Comsumption",
            amountOfFiles: "1.7 Kg CO2",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/skyblue.svg",
            title: "Transport",
            amountOfFiles: "2 kg CO2",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/orange.svg",
            title: "Device Usage",
            amountOfFiles: "0.8 kg CO2",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/red.svg",
            title: "Energy Consumption",
            amountOfFiles: "0.5 kg CO2",
            numOfFiles: 140,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/gray.svg",
            title: "Others",
            amountOfFiles: "1 kg CO2",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
