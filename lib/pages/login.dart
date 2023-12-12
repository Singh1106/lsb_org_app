import 'package:flutter/material.dart';
import 'package:lsb_organization/pages/otp.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        hintColor: Colors.purpleAccent,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.purple[100],
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: LoginFormImplementation(),
        ),
      ),
    );
  }
}

class LoginFormImplementation extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginFormImplementation> {
  final TextEditingController phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? selectedCountryCode;

  List<String> countryCodes = [
    '91',
    '1',
    '44',
    '81',
    '86'
  ]; // Sample country codes

  @override
  void initState() {
    super.initState();
    selectedCountryCode = countryCodes[0]; // Set default country code
  }

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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DropdownButtonFormField<String>(
            value: selectedCountryCode,
            onChanged: (String? value) {
              setState(() {
                selectedCountryCode = value;
              });
            },
            items: countryCodes.map((String code) {
              return DropdownMenuItem<String>(
                value: code,
                child: Text(code),
              );
            }).toList(),
            decoration: InputDecoration(
              labelText: 'Country Code',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            controller: phoneNumberController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            ),
            validator: validatePhoneNumber,
          ),
          SizedBox(height: 24.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              onPrimary: Colors.white,
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Navigate to the OTP filling page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpPage(),
                  ),
                );
              }
            },
            child: Text('Send OTP'),
          ),
        ],
      ),
    );
  }
}
