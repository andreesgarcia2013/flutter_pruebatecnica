import 'package:flutter/material.dart';
import 'package:flutter_pruebatecnica/providers/users_api.dart';
import 'package:flutter_pruebatecnica/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack( 
            children: <Widget>[
              Positioned(
                top:-250,
                right: -200,
                child: HeaderBorderRadius()
              ),
              _CustomHead(size: size),
            ],
          ),
          _CustomBody(size: size)
        ],
      )
    );
  }
}

class _CustomBody extends StatelessWidget {
  const _CustomBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final userApi=Provider.of<UserApi>(context);
    final usersList=userApi.users;
    return Container(
      height: size.height*0.70,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Today Notifications', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black38),),
          Expanded(
            child: ListView.builder(
              itemCount: usersList.length,
              itemBuilder:(context, index) => CardNotification(user: usersList[index],), 
            ),
          )
        ],
      ),
    );
  }
}



class _CustomHead extends StatelessWidget {
  const _CustomHead({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.30,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 120,
            width: 120,
            child: const CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              child: Text('AN', style: TextStyle(fontSize: 60, color: Colors.white)),
              // child: Text(usuario.nombre!.substring(0,1)+usuario.apellidos!.substring(0,1), style: TextStyle(fontSize: 68, color: SettingsColor.primary),),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            height: 120,
            child: const Text('Hi, Antonio Nila', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
          )
        ],
      ),
    );
  }
}