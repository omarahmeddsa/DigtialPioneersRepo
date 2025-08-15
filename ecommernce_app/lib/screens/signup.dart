import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
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
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person, size: 20),
                              hintText: 'Enter your name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Email';
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail, size: 20),
                              hintText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your phone number';
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone, size: 20),
                              hintText: 'Enter your number',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock, size: 20),
                              hintText: 'password',
                              border: OutlineInputBorder(),
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
                                if (_formKey.currentState!.validate()) {
                                  // Navigate to the home screen
                                  Navigator.pushReplacementNamed(
                                    context,
                                    'homescreen',
                                  );
                                }
                              },
                              child: Text(
                                'Create Account',
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
                                // Navigate to the login screen
                                Navigator.pushReplacementNamed(
                                  context,
                                  'login',
                                );
                              },
                              child: Text(
                                'Already have and account?',
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
