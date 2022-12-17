// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_uasmobile/api/http_helper.dart';

import '../components/check_have _account.dart';
import '../screen/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  bool _isObscure = true;

  TextEditingController etName = TextEditingController();
  TextEditingController etEmail = TextEditingController();
  TextEditingController etPassword = TextEditingController();

  doRegister() async {
    final name = etName.text;
    final email = etEmail.text;
    final password = etPassword.text;
    const deviceId = "12345";
    final response =
        await HttpHelper().register(name, email, password, deviceId);
    print(response.body);

    Navigator.pushNamed(
      context,
      '/login',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/registrasi.png',
                  width: 130,
                ),
                Text(
                  'Stisla',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                    color: Colors.pinkAccent,
                    shadows: [
                      Shadow(
                        color: Colors.red.shade300,
                        blurRadius: 10,
                        offset: const Offset(4.0, 4.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    style: const TextStyle(
                      fontFamily: 'Raleway',
                    ),
                    controller: etName,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: const TextStyle(
                        fontFamily: 'Raleway',
                      ),
                      prefixIcon: const Align(
                        widthFactor: 3.5,
                        heightFactor: 1.5,
                        child: Icon(
                          Icons.person,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade100),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.5,
                          color: Colors.red.shade100,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    style: const TextStyle(
                      fontFamily: 'Raleway',
                    ),
                    controller: etEmail,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        fontFamily: 'Raleway',
                      ),
                      prefixIcon: const Align(
                        widthFactor: 3.5,
                        heightFactor: 1.5,
                        child: Icon(
                          Icons.email,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade100),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.5,
                          color: Colors.red.shade100,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    style: const TextStyle(
                      fontFamily: 'Raleway',
                    ),
                    controller: etPassword,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        fontFamily: 'Raleway',
                      ),
                      prefixIcon: const Align(
                        widthFactor: 3.5,
                        heightFactor: 1.5,
                        child: Icon(
                          Icons.lock,
                        ),
                      ),
                      suffixIcon: Align(
                        widthFactor: 1.7,
                        child: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade100),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.5,
                          color: Colors.red.shade100,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        doRegister();
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Login();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
