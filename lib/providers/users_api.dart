import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_pruebatecnica/models/user_model.dart';
import 'package:http/http.dart' as http;


class UserApi extends ChangeNotifier {
  List<UserModel> users=[];
  bool loading=false;
  String apiUrl='https://app.dappis.mx/api.json';
  UserApi(){
    getUsers();
  }

  getUsers()async{
    print('Obteniendo usuario');
    final url=Uri.parse(apiUrl);
    final resp=await http.get(url);
    if (resp.statusCode==200) {
      var result = jsonDecode(resp.body) as List;
      users=result.map((user) => UserModel.fromJson(user)).toList();
      notifyListeners();
    }
    else{
      return;
    }
  }
  
}