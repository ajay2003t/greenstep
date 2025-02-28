import 'package:flutter_auth/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Energy",
    numOfFiles: 1328,
    svgSrc: "assets/icons/bulb.svg",
    totalStorage: "0.5kg CO2",
    color: primaryColor,
    percentage: 25,
  ),
  CloudStorageInfo(
    title: "Walking",
    numOfFiles: 1328,
    svgSrc: "assets/icons/foot.svg",
    totalStorage: "6000 steps",
    color: const Color(0xFFFFA113),
    percentage: 70,
  ),
  CloudStorageInfo(
    title: "Transport",
    numOfFiles: 1328,
    svgSrc: "assets/icons/warning.svg",
    totalStorage: "1.5 kg CO2",
    color: Colors.greenAccent,
    percentage: 80,
  ),
  CloudStorageInfo(
    title: "Unwanted Activity",
    numOfFiles: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "1 Kg CO2",
    color: const Color(0xFF007EE5),
    percentage: 90,
  ),
];
