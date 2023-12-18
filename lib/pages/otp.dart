// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:lsb_organization/pages/home.dart';
import 'package:lsb_organization/theme/main.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key});

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isVerifying = false;

  void _verifyOtp(BuildContext context) async {
    setState(() {
      isVerifying = true;
    });

    // Simulating OTP verification delay
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      isVerifying = false;
    });

    // Navigate to the home page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter OTP'),
        backgroundColor: theme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: otpController,
                keyboardType: TextInputType.number,
                maxLength: 6,
                decoration: InputDecoration(
                  labelText: 'OTP',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: theme.formFieldFillColor,
                ),
                validator: (value) {
                  if (value!.isEmpty || value.length < 6) {
                    return 'Enter a valid OTP';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24.0),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: theme.buttonBackgroundColor,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _verifyOtp(context);
                  }
                },
                icon: isVerifying
                    ? SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      )
                    : const Icon(Icons.send),
                label: isVerifying
                    ? const Text('Verifying')
                    : const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
