import 'package:flutter/material.dart';
import 'package:lsb_organization/pages/home.dart';

class OtpPage extends StatefulWidget {
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
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      isVerifying = false;
    });

    // Navigate to the home page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter OTP'),
        backgroundColor: Colors.purple[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
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
                  fillColor: Colors.white,
                ),
                validator: (value) {
                  if (value!.isEmpty || value.length < 6) {
                    return 'Enter a valid OTP';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24.0),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  onPrimary: Colors.white,
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
                    : Icon(Icons.send),
                label: isVerifying ? Text('Verifying') : Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
