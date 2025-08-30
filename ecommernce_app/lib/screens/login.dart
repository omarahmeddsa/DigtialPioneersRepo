import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Image.asset('assets/logoimg.jpeg'),
              ),
              Center(
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                      left: 20,
                      right: 20,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail, size: 20),
                                hintText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, size: 20),
                              hintText: 'password',
                              border: OutlineInputBorder(),
                            ),
                          ),

                          Positioned(
                            right: 20,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {
                                // Navigate to the home screen
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushReplacementNamed(
                                    context,
                                    'homescreen',
                                  );
                                }
                              },
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            right: 20,
                            child: TextButton(
                              onPressed: () {
                                // Navigate to the signup screen
                                Navigator.pushReplacementNamed(
                                  context,
                                  'signup',
                                );
                              },
                              child: Text(
                                'Dont have and account?',
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ),
                          ),
                        ],
                      ),
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
