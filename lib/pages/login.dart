import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lsb_organization/pages/otp.dart';
import 'package:lsb_organization/theme/main.dart';

class LoginPage extends HookWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeSelector.getTheme();

    return Scaffold(
      appBar: AppBar(
        title: const Text('LSB Portal'),
        backgroundColor: theme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LoginFormImplementation(theme: theme),
      ),
    );
  }
}

class LoginFormImplementation extends HookWidget {
  final AppTheme theme;

  const LoginFormImplementation({Key? key, required this.theme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedCountryCode = useState<String>('91');
    final phoneNumberController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    String? validatePhoneNumber(String? value) {
      if (value!.isEmpty) {
        return 'Please enter a phone number';
      }
      // Regular expression to validate phone numbers
      String pattern =
          r'^\d{7,}$'; // Custom pattern for any mobile number validation
      RegExp regExp = RegExp(pattern);
      if (!regExp.hasMatch(value)) {
        return 'Please enter a valid phone number';
      }
      return null;
    }

    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DropdownButtonFormField<String>(
            value: selectedCountryCode.value,
            onChanged: (String? value) {
              selectedCountryCode.value = value!;
            },
            items: ['91', '1', '44', '81', '86'].map((String code) {
              return DropdownMenuItem<String>(
                value: code,
                child: Text(code),
              );
            }).toList(),
            decoration: InputDecoration(
              labelText: 'Country Code',
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: theme.formFieldFillColor,
            ),
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: phoneNumberController,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: theme.formFieldFillColor,
            ),
            validator: validatePhoneNumber,
          ),
          const SizedBox(height: 24.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: theme.buttonTextColor,
              backgroundColor: theme.buttonBackgroundColor,
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OtpPage(),
                  ),
                );
              }
            },
            child: const Text('Send OTP'),
          ),
        ],
      ),
    );
  }
}
