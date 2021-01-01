import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String username = '';
  String email = '';
  String password = '';
  final usernameController = TextEditingController();
  // final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // key: formKey,
        child: ListView(
          children: [
            buildUsername(),
            SizedBox(height: 20),
            // buildEmail(),
            // SizedBox(height: 20),
            // buildPassword(),
            // SizedBox(height: 20),
            // buildSubmit(),
          ],
        ),
      ),
    );
  }

  Widget buildUsername() {
    return TextField(
      controller: usernameController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        suffixIcon: IconButton(
          onPressed: () => usernameController.clear(),
          icon: Icon(Icons.close),
        ),
        labelText: 'username',
        hintText: 'Bijaya',
        hintStyle: TextStyle(color: Colors.black12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      maxLength: 30,
      // validator: (value) {
      //   if (value.length < 4) {
      //     return 'Enter atleast 4 characters';
      //   } else {
      //     return null;
      //   }
      // },
      // onSaved: (value) => setState(() => username = value)
    );
  }

  // Widget buildEmail() {
  //   return TextField(
  //     decoration: InputDecoration(
  //       labelText: 'email',
  //       border: OutlineInputBorder(),
  //     ),
  //     keyboardType: TextInputType.emailAddress,
  //     // validator: (value) {
  //     //   final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
  //     //   final regExp = RegExp(pattern);

  //     //   if (value.isEmpty) {
  //     //     return 'Enter an email';
  //     //   } else if (!regExp.hasMatch(value)) {
  //     //     return 'Enter a valid email';
  //     //   } else {
  //     //     return null;
  //     //   }
  //     // },
  //     // onSaved: (value) => setState(() => email = value)
  //   );
  // }

  // Widget buildPassword() {
  //   return TextField(
  //     decoration: InputDecoration(
  //       labelText: 'Password',
  //       border: OutlineInputBorder(),
  //     ),
  //     // validator: (value) {
  //     //   if (value.length < 7) {
  //     //     return 'Password must be atleast 7 characters long';
  //     //   } else {
  //     //     return null;
  //     //   }
  //     // },
  //     keyboardType: TextInputType.visiblePassword,
  //     obscureText: true,
  //     // onSaved: (value) => setState(() => password = value),
  //   );
  // }

  // Widget buildSubmit() {
  //   // return Builder(
  //   //   builder: (context) =>
  //   return RaisedButton(
  //     child: Text(
  //       'Submit',
  //       style: TextStyle(fontSize: 24),
  //     ),
  //     shape: StadiumBorder(),
  //     color: Theme.of(context).primaryColor,
  //     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  //     textColor: Colors.white,
  //     onPressed: () {
  //       // final isValid = formKey.currentState.validate();
  //       // if (isValid) {
  //       //   formKey.currentState.save();
  //       //   final message =
  //       //       'Username: $username \n Email: $email \n Password: $password \n';

  //       //   final snackbar = SnackBar(
  //       //     content: Text(message),
  //       //     backgroundColor: Colors.green,
  //       //   );

  //       //   Scaffold.of(context).showSnackBar(snackbar);
  //       // }
  //     },
  //   );
  // }
}
