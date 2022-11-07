import 'package:flutter/material.dart';
import 'package:main_app/provider/regist.dart';
import 'package:main_app/screens/login_screen.dart';
import 'package:main_app/utils/colors.dart';
import 'package:main_app/widgets/text_field_input.dart';
import 'package:main_app/provider/regist.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context, listen: false);
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _usernameController = TextEditingController();

    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _passwordController2 = TextEditingController();

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Scriptgram'),
      // ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Flexible(child: Container(), flex: 2),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                const Text(
                  "Register",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  child: const Text(
                    "Please Fill your information",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            // svg image
            // Image.asset(
            //   'assets/ic_scriptgram.png',
            //   height: 64,),
            TextFieldInput(
              hintText: 'Enter your Username',
              textInputType: TextInputType.text,
              textEditingController: _usernameController,
            ),

            const SizedBox(height: 24),
            // text field input for email
            TextFieldInput(
              hintText: 'Enter your email',
              textInputType: TextInputType.emailAddress,
              textEditingController: _emailController,
            ),
            const SizedBox(
              height: 24,
            ),
            // text field input for password
            TextFieldInput(
              hintText: 'Enter your password',
              textInputType: TextInputType.text,
              textEditingController: _passwordController,
              isPass: true,
            ),
            const SizedBox(
              height: 24,
            ),
            // Te

            const SizedBox(
              height: 24,
            ),
            // button login
            GestureDetector(
              onTap: () {
                user
                    .addUser(
                  _usernameController.text,
                  _emailController.text,
                  _passwordController.text,
                )
                    .then((response) {
                  // print("Kembali ke Home & kasih notif snack bar");
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Registrasi Berhasil"),
                      duration: Duration(seconds: 2),
                    ),
                  );
                  Navigator.pop(context);
                });
              },
              child: InkWell(
                child: Container(
                  child: const Text('Register',
                      style: TextStyle(color: Colors.white)),
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
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            // Flexible(child: Container(), flex: ),
            Flexible(
                child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      child: Container(
                        child: const Text(
                          "Alredy Have account ? Login",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
