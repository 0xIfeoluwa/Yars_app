import 'package:flutter/material.dart';
import 'package:yars_app/widgets/custom_button.dart';
import 'package:yars_app/widgets/custom_button_icon.dart';
import 'package:yars_app/widgets/textfield_widget.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Create account and enjoy all services'),
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
            const Text('OR'),
            const TextfieldWidget(
              icon: Icons.person,
              labelText: 'Full Name',
              text: 'Full name',
            ),
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
            const Text("Radio Button Here"),
            CustomButton(onPressed: () {}, text: 'Sign Up'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
