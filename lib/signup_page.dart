import 'package:flutter/material.dart';
import 'package:practice/main.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B0F0F),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Create Account",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Join TrustyWheels for a Safer Commute.",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(171, 162, 163, 1),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),

            /// Apple Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 18),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.apple, color: Colors.black),
                  SizedBox(width: 10),
                  Text(
                    "Continue with Apple",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            /// Google Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3B4A5A),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.g_mobiledata, color: Colors.white, size: 30),
                  SizedBox(width: 10),
                  Text(
                    "Continue with Google",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            /// OR Divider
            Row(
              children: const [
                Expanded(child: Divider(color: Colors.white54)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OR", style: TextStyle(color: Colors.white54)),
                ),
                Expanded(child: Divider(color: Colors.white54)),
              ],
            ),

            const SizedBox(height: 15),

            _buildLabel("Full Name"),
            _buildInput("Enter your full name"),

            const SizedBox(height: 15),

            _buildLabel("Email"),
            _buildInput("Enter your email"),

            const SizedBox(height: 15),

            _buildLabel("Password"),
            _buildInput("Enter your password", isPassword: true),

            const SizedBox(height: 15),

            _buildLabel("Confirm Password"),
            _buildInput("Confirm your password", isPassword: true),

            const SizedBox(height: 15),

            /// Checkbox
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() => _isChecked = value ?? false);
                  },
                  activeColor: Colors.red,
                ),
                const Expanded(
                  child: Text(
                    "I agree to the Terms & Conditions and Privacy Policy",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEB1412),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: const Text("Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "gilroylight",
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xFFEB1412),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromRGBO(171, 162, 163, 1),
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildInput(String hint, {bool isPassword = false}) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromRGBO(171, 162, 163, 1)),
      ),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Color.fromRGBO(171, 162, 163, 1)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
