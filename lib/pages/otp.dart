// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lsb_organization/pages/home.dart';
import 'package:lsb_organization/theme/main.dart';

class OtpPage extends HookWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();
    final otpController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final isVerifying = useState(false);

    void verifyOtp(BuildContext context) async {
      isVerifying.value = true;

      // Simulating OTP verification delay
      await Future.delayed(const Duration(seconds: 1));

      isVerifying.value = false;

      // Navigate to the home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter OTP'),
        backgroundColor: theme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
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
                  border: const OutlineInputBorder(),
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
                  if (formKey.currentState!.validate()) {
                    verifyOtp(context);
                  }
                },
                icon: isVerifying.value
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      )
                    : const Icon(Icons.send),
                label: isVerifying.value
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
