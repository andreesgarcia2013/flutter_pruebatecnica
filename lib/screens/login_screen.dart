import 'package:flutter/material.dart';
import 'package:flutter_pruebatecnica/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
   
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  <Widget>[
            const Image(
              image: AssetImage('assets/user_image.png'),
              height: 100,
            ),
            const SizedBox(height: 5,),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 160, 192, 208),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child:  _CustomForm(),
              width: 350,
            )
          ],
        ),
      ),
    );
  }
}

class _CustomForm extends StatelessWidget {
  const _CustomForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    goHomeScreen(){
      Navigator.pushNamed(context, '/home');
    }

    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa tu usuario',
                labelText: 'Usuario'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PasswordWidget(),
          ),
          ElevatedButton(
            onPressed: goHomeScreen, 
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text('Ingresar'),
            ),
          )
        ],
      ),
    );
  }
}

