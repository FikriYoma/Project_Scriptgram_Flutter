import 'package:flutter/material.dart';
import 'package:main_app/screens/setting.dart';
import 'package:main_app/utils/colors.dart';
import 'package:faker/faker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main_app/screens/bottom_navbar.dart';
import 'package:main_app/screens/end_drawer.dart';
import 'package:main_app/screens/newpost.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map<String, String>> listPosts = [
    {
      'image': 'assets/images/post-1.jpg',
    },
    {
      'image': 'assets/images/post-2.jpg',
    },
    {
      'image': 'assets/images/post-3.jpg',
    },
    {
      'image': 'assets/images/post-4.jpg',
    },
    {
      'image': 'assets/images/post-5.jpg',
    },
    {
      'image': 'assets/images/post-6.jpg',
    },
    {
      'image': 'assets/images/post-7.jpg',
    },
    {
      'image': 'assets/images/post-8.jpg',
    },
    {
      'image': 'assets/images/post-9.jpg',
    },
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final faker = Faker();

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: white,
        endDrawerEnableOpenDragGesture: false,
        endDrawer: const EndDrawer(),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Custom App bar
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Text(
                        'Universitas Airlangga',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewPost()));
                        },
                        child: SvgPicture.asset(
                          'assets/icons/add.svg',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.black),
                        onPressed: () {
                          _scaffoldKey.currentState!.openEndDrawer();
                        },
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/icons/logo_unair.png',
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 24),
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    '1,666',
                                    style: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Posts',
                                    style: TextStyle(
                                      color: black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    '242K',
                                    style: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Followers',
                                    style: TextStyle(
                                      color: black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    '518',
                                    style: TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Following',
                                    style: TextStyle(
                                      color: black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      // bio
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Universitas Airlangga',
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      // buttons
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'OA of Universitas Airlangga | 6231-5914042/43 | Excellence with Morality | Internationalization - @globalunair | PPID UNAIR - @ppidunair',
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'unair.ac.id',
                          style: TextStyle(
                            color: hyperlinkColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: const [
                            SizedBox(width: 8),
                            // ProfileButton(text: 'Ad Tools'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),

                      GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 1 / 1,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 20,
                        ),
                        itemBuilder: (context, index) {
                          final post = listPosts[index];
                          return Column(
                            children: [
                              Image.asset(
                                post['image']!,
                                fit: BoxFit.cover,
                                width: 500,
                                height: 300,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${faker.lorem.sentences(2)}',
                                style: const TextStyle(
                                  color: black,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          );
                        },
                        itemCount: listPosts.length,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BtmNavbar());
  }
}
