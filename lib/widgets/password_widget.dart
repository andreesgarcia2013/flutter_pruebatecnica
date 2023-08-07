import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({
    super.key,
  });

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !showPass,
      decoration:  InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Ingresa tu contraseña',
        labelText: 'Contraseña',
        suffixIcon: IconButton(
          onPressed: (){
            print('hello');
            setState(() {
              showPass=!showPass;
            });
          }, 
          icon: Icon(Icons.remove_red_eye)
        )
      ),
    );
  }
}