import 'package:flutter/material.dart';
import 'package:main_app/utils/colors.dart';
import 'package:faker/faker.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BtmNavbar extends StatelessWidget {
  const BtmNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {},
      backgroundColor: white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
            width: 24,
            height: 24,
          ),
        ),
        BottomNavigationBarItem(
          label: 'search',
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            width: 24,
            height: 24,
          ),
        ),
        BottomNavigationBarItem(
          label: 'reels',
          icon: Container(
            height: 29,
            width: 29,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/icons/logo_unair.png',
                height: 29,
                width: 29,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
