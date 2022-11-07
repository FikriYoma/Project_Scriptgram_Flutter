import 'package:flutter/material.dart';
import 'package:main_app/screens/profile.dart';
import 'package:main_app/screens/register_screen.dart';
import 'package:main_app/utils/colors.dart';
import 'package:main_app/widgets/text_field_input.dart';
import 'package:main_app/screens/signup.dart';

class NewPost extends StatelessWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _text1 = TextEditingController();
    final TextEditingController _text2 = TextEditingController();

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
                    'Add New Post',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/post-9.jpg',
                  height: 250,
                  width: 350,
                  fit: BoxFit.cover,
                ),

                const SizedBox(
                  height: 24,
                ),

                TextFieldInput(
                  hintText: 'Enter Caption',
                  textInputType: TextInputType.emailAddress,
                  textEditingController: _text1,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Enter Hastag',
                  textInputType: TextInputType.emailAddress,
                  textEditingController: _text2,
                ),

                const SizedBox(
                  height: 24,
                ),
                Container(
                  child: const Text(
                    'Upload new Post',
                    style: TextStyle(fontWeight: FontWeight.bold, color: white),
                  ),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      color: blueColor),
                ),
                // text field input for password
              ],
            ),
          )
        ],
      )),
    );
  }
}
