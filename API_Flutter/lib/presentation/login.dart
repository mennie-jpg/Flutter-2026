import 'package:flutter/material.dart';
import 'package:my_api/auth_service.dart';
import 'package:my_api/presentation/screen.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  AuthService auth = AuthService();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                // Email
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                // Password
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                // Login Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      print("Logging in with: ${emailController.text}");
                      try {
                        await auth.login(emailController.text , passwordController.text);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyWidget()));
                      } catch (e) {
                        print("=====================$e");
                      }
                    },
                    child: const Text("Login"),
                  ),
                ),
                const Divider(height: 40),
                // Google Login Button
                ActionChip(
                  avatar: const Icon(Icons.login),
                  label: const Text("Sign in with Google"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
