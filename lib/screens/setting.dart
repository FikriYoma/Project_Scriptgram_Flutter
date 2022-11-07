import 'package:flutter/material.dart';
import 'package:main_app/utils/colors.dart';
import 'package:faker/faker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main_app/screens/bottom_navbar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Text(
                    'App settings',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    title: Text('Notification'),
                    leading: Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    title: Text('Privacy'),
                    leading: Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    title: Text('Security'),
                    leading: Icon(
                      Icons.security_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    title: Text('Ads'),
                    leading: Icon(
                      Icons.ads_click_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    title: Text('About'),
                    leading: Icon(
                      Icons.info_outline,
                      color: Colors.black,
                    ),
                  ),
                ),
                Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    title: Text('Theme'),
                    leading: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ),
                Material(
                  child: ListTile(
                    tileColor: Colors.white,
                    title: Text('Logout'),
                    leading: Icon(
                      Icons.logout_outlined,
                      color: Colors.black,
                    ),
                    
                  ),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
