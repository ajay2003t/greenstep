import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/chatbot/chatbot_main.dart';
import 'package:flutter_auth/Screens/community/community_main.dart';
import 'package:flutter_auth/Screens/main/dashboard_main.dart';
import 'package:flutter_auth/Screens/record/record_main.dart';
import 'package:flutter_auth/Screens/shop/shop_main.dart';
import 'package:flutter_auth/Screens/user/profile_main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => DashboardMain(),
                ),
              );
            },
          ),
          DrawerListTile(
            title: "Record",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const RecordMain(),
                ),
              );
            },
          ),
          DrawerListTile(
            title: "Ai Chat",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const ChatBot(),
                ),
              );
            },
          ),
          DrawerListTile(
            title: "Community",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const CommunityMain(),
                ),
              );
            },
          ),
          DrawerListTile(
            title: "Shop",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const ShopMain(),
                ),
              );
            },
          ),
          DrawerListTile(
            title: "Rewards and Points",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const ProfileMain(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
