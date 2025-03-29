import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/dashboard/components/storage_info_card.dart';
import 'package:flutter_auth/Screens/main/components/side_menu.dart';
import '../../../constants.dart';
import 'package:flutter_auth/Screens/shop/constants.dart';

class RecordMain extends StatelessWidget {
  const RecordMain({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const SideMenu(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 15, 1),
        elevation: 1,
        title: const Row(
          children: [
            Row(
              children: [
                Text(
                  'Records',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'fredoka_bold',
                      fontSize: 30),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: size.height,
          width: size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              width: 150,
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: ExactAssetImage('assets/images/profile.jpg'),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Constants.primaryColor.withOpacity(.5),
                  width: 5.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'jeo',
              style: TextStyle(
                color: Constants.blackColor,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const StorageInfoCard(
              svgSrc: "assets/icons/blue.svg",
              title: "28/03/2025",
              amountOfFiles: "1.7 Kg CO2",
            ),
            const StorageInfoCard(
              svgSrc: "assets/icons/blue.svg",
              title: "27/03/2025",
              amountOfFiles: "1.7 Kg CO2",
            ),
            const StorageInfoCard(
              svgSrc: "assets/icons/blue.svg",
              title: "26/03/2025",
              amountOfFiles: "1.7 Kg CO2",
            ),
            const StorageInfoCard(
              svgSrc: "assets/icons/blue.svg",
              title: "25/03/2025",
              amountOfFiles: "1.7 Kg CO2",
            ),
            const StorageInfoCard(
              svgSrc: "assets/icons/blue.svg",
              title: "24/03/2025",
              amountOfFiles: "1.7 Kg CO2",
            ),
            const StorageInfoCard(
              svgSrc: "assets/icons/blue.svg",
              title: "23/03/2025",
              amountOfFiles: "1.7 Kg CO2",
            ),
            const StorageInfoCard(
              svgSrc: "assets/icons/blue.svg",
              title: "22/03/2025",
              amountOfFiles: "1.7 Kg CO2",
            ),
            const StorageInfoCard(
              svgSrc: "assets/icons/blue.svg",
              title: "21/03/2025",
              amountOfFiles: "1.7 Kg CO2",
            ),
          ]),
        ),
      ),
    );
  }
}
