import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yars_app/widgets/custom_button.dart';
import 'package:yars_app/widgets/custom_button_icon.dart';
import 'package:yars_app/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Welcome back!'),
            const Text('Sign In to your account'),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: OutlinedButton.icon(
                  icon: const ImageIcon(
                    AssetImage('lib/assets/images/google.png'),
                  ),
                  label: const Text('Continue with Google'),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            const CustomButtonIconWidget(
              icon: Icons.apple_rounded,
              text: 'Continue with Apple',
            ),
            const SizedBox(height: 20),
            const Text('OR'),
            const TextfieldWidget(
              icon: Icons.email_outlined,
              labelText: 'Email',
              text: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            const TextfieldWidget(
              icon: Icons.password,
              labelText: 'Password',
              text: 'Password',
              keyboardType: TextInputType.visiblePassword,
            ),
            CustomButton(onPressed: () {}, text: 'Login'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                TextButton(
                  onPressed: () => context.go('/sign_up'),
                  child: const Text('Sign Up'),
                ),
              ],
            ),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
