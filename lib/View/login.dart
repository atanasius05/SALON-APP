import 'package:flutter/material.dart';
import 'package:guidedlayout2_1604/View/showProfile.dart';
import 'package:guidedlayout2_1604/View/register.dart';
import 'package:guidedlayout2_1604/utilities/constant.dart';

class LoginView extends StatefulWidget {
  final Map<String, dynamic>? data;

  const LoginView({super.key, this.data});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? userData = widget.data;

    Widget inputForm(
      String? Function(String?) validator, {
      required TextEditingController controller,
      required String hintTXt,
      String? helperTxt,
      IconData? iconData,
      bool password = false,
    }) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 36.0),
        child: TextFormField(
          controller: controller,
          obscureText: password,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintTXt,
            helperText: helperTxt,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFFFBD13)),
            ),
            hintStyle: const TextStyle(color: Colors.white54),
            helperStyle: const TextStyle(color: Colors.white54),
            fillColor: Colors.white.withOpacity(0.2),
            filled: true,
          ),
          style: kTextStyle6,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top,
              ),
              child: IntrinsicHeight(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                      topRight: Radius.circular(200),
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 30),
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/Logo.jpg'),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Login',
                          style: kTextStyle1,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Login to Your Account',
                          style: kTextStyle5,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 90),
                        inputForm(
                          (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return "Username tidak boleh kosong";
                            }
                            return null;
                          },
                          controller: usernameController,
                          hintTXt: "Username",
                        ),
                        inputForm(
                          (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return "Password tidak boleh kosong";
                            }
                            return null;
                          },
                          password: true,
                          controller: passwordController,
                          hintTXt: "Password",
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFBD13),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 175),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (userData != null &&
                                  userData['username'] ==
                                      usernameController.text &&
                                  userData['password'] ==
                                      passwordController.text) {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    backgroundColor: Colors.white,
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          'Login Success',
                                          style: kTextStyle7,
                                        ),
                                        const SizedBox(height: 36),
                                        const Icon(
                                          Icons.check_circle,
                                          color: Color(0xFFFFBD13),
                                          size: 150,
                                        ),
                                        const SizedBox(height: 36),
                                        OutlinedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) =>
                                                    const Showprofile(),
                                              ),
                                            );
                                          },
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                                color: Color(0xFFFFBD13),
                                                width: 3),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            minimumSize: const Size(250, 50),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 24),
                                            foregroundColor:
                                                const Color(0xFFFFBD13),
                                          ),
                                          child: const Text(
                                            "Let's Roll",
                                            style: kTextStyle2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    backgroundColor: Colors.white,
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          'Login Gagal',
                                          style: kTextStyle7,
                                        ),
                                        const SizedBox(height: 36),
                                        const Icon(
                                          Icons.warning_amber_rounded,
                                          color: Color(0xFFFFBD13),
                                          size: 150,
                                        ),
                                        const SizedBox(height: 36),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: const Text(
                                            'Username atau password salah. Silakan coba lagi.',
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 16,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        OutlinedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                                color: Color(0xFFFFBD13),
                                                width: 3),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            minimumSize: const Size(250, 50),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12, horizontal: 24),
                                            foregroundColor:
                                                const Color(0xFFFFBD13),
                                          ),
                                          child: const Text(
                                            "Coba Lagi",
                                            style: TextStyle(
                                              color: Color(0xFFFFBD13),
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                            }
                          },
                          child: const Text(
                            'LOG IN',
                            style: kTextStyle3,
                          ),
                        ),
                        const SizedBox(height: 14),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const RegisterView(),
                              ),
                            );
                          },
                          child: const Text(
                            'Belum punya akun? Daftar di sini',
                            style: TextStyle(
                              color: Color(0xFFFFBD13),
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        const SizedBox(height: 380),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 36.0),
                          child: Text(
                            'By logging in or registering, you agree to our Terms of Service and Privacy Policy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
