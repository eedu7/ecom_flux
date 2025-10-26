import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();

  bool _isPasswordVisible = false;
  bool _isLoading = false;

  String? _selectedGender = 'Male';

  void _handleSignup() async {}

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'First Name',
              hintText: 'Enter your first name',
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Last Name',
              hintText: 'Enter your last name',
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              hintText: 'Enter your phone number',
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.0),
              Text('Gender', style: TextStyle(fontSize: 16.0)),
              RadioGroup(
                groupValue: _selectedGender,
                onChanged: (String? value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
                child: Row(
                  children: <Widget>[
                    Radio<String>(value: 'Male'),
                    Text('Male'),
                    Radio<String>(value: 'Female'),
                    Text('Female'),
                    Radio<String>(value: 'Other'),
                    Text('Other'),
                  ],
                ),
              ),
            ],
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: '********',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              hintText: '********',

              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          SizedBox(height: 32.0),
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : Center(
                  child: ElevatedButton(
                    onPressed: _handleSignup,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 32.0,
                      ),
                      backgroundColor: Color(0xFF2D201C),
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
