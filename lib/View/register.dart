import 'package:flutter/material.dart';
import 'package:guidedlayout2_1604/View/login.dart';
import 'package:guidedlayout2_1604/utilities/constant.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController namaController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController notelpController = TextEditingController();

  // Array list untuk menyimpan data registrasi
  List<Map<String, String>> userDataList = [];

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
              vertical: 16, // Atur jarak vertikal
              horizontal: 20, // Atur jarak horizontal
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.grey), // Warna border saat tidak dipilih
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Color(0xFFFFBD13)), // Warna border saat dipilih
            ),
            hintStyle: TextStyle(color: Colors.white54),
            helperStyle: TextStyle(color: Colors.white54),
            fillColor: Colors.white
                .withOpacity(0.2), // Warna background dengan transparansi 30%
            filled: true, // Aktifkan background untuk text field
          ),
          style: kTextStyle6 // Warna teks
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                    topRight: Radius.circular(200),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/Logo.jpg'),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Register',
                          style: kTextStyle1,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Create your account',
                          style: kTextStyle5,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),
                        inputForm(
                          (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'Nama Lengkap Tidak Boleh Kosong';
                            }
                            return null;
                          },
                          controller: namaController,
                          hintTXt: "Nama Lengkap",
                        ),
                        const SizedBox(height: 4),
                        inputForm(
                          (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'Username Tidak Boleh Kosong';
                            }
                            return null;
                          },
                          controller: usernameController,
                          hintTXt: "Username",
                        ),
                        const SizedBox(height: 4),
                        inputForm(
                          (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'Password tidak boleh kosong';
                            }
                            if (p0.length < 8) {
                              return 'Password minimal 8 karakter';
                            }
                            return null;
                          },
                          controller: passwordController,
                          hintTXt: "Password",
                          password: true,
                        ),
                        const SizedBox(height: 4),
                        inputForm(
                          (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'Email tidak boleh kosong';
                            }
                            if (!p0.contains('@')) {
                              return 'Email harus menggunakan @';
                            }
                            return null;
                          },
                          controller: emailController,
                          hintTXt: "Email",
                        ),
                        const SizedBox(height: 4),
                        inputForm(
                          (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'Nomor Telepon tidak boleh kosong';
                            }
                            if (p0.length < 11) {
                              return 'Nomor Telepon minimal 11 digit';
                            }
                            return null;
                          },
                          controller: notelpController,
                          hintTXt: "Nomor Telepon",
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFBD13),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            foregroundColor: Colors.white,
                            
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 170), // Padding
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Simpan data input ke dalam array list
                              userDataList.add({
                                'nama': namaController.text,
                                'username': usernameController.text,
                                'email': emailController.text,
                                'password': passwordController.text,
                                'notelp': notelpController.text,
                              });

                              Map<String, dynamic> formData = {};
                              formData['username'] = usernameController.text;
                              formData['password'] = passwordController.text;

                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        30), // Membuat sudut dialog bulat
                                  ),
                                  backgroundColor: Colors
                                      .white, // Latar belakang putih untuk sukses
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        'Register Success',
                                        style: kTextStyle7,
                                      ),
                                      const SizedBox(height: 36),
                                      const Icon(
                                        Icons.check_circle,
                                        color: Color(
                                            0xFFFFBD13), // Warna ikon sukses
                                        size: 150,
                                      ),
                                      const SizedBox(height: 36),
                                      OutlinedButton(
                                        onPressed: () {
                                          Navigator.pop(
                                              context); // Tutup dialog
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => LoginView(
                                                  data:
                                                      formData), // Arahkan ke halaman login
                                            ),
                                          );
                                        },
                                        style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                            color: Color(0xFFFFBD13),
                                            width: 3, // Warna border
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // Sudut tombol bulat
                                          ),
                                          minimumSize: const Size(250,
                                              50), // Lebar tombol diatur menjadi 200
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 12,
                                            horizontal: 24,
                                          ),
                                          foregroundColor: const Color(
                                              0xFFFFBD13), // Warna teks
                                        ),
                                        child: const Text("Let's Roll",
                                            style: kTextStyle2),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            'SIGN UP',
                            style: kTextStyle3,
                          ),
                        ),
                        const SizedBox(height: 260), // Tambahkan jarak kecil
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 36.0),
                          child: Text(
                            'By logging in or registering, you agree to our Terms of Service and Privacy Policy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  Colors.white54, // Sesuaikan warna sesuai tema
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
