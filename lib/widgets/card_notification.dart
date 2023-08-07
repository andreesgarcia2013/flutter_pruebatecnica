import 'package:flutter/material.dart';
import 'package:flutter_pruebatecnica/models/user_model.dart';

class CardNotification extends StatelessWidget {
  const CardNotification({
    required this.user,
    super.key,
  });
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: FadeInImage(
            placeholder: AssetImage('assets/loader.gif'),
            image: NetworkImage(user.picture),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: ListTile(
          leading: Icon(Icons.add_box, color: Colors.red,),
          title: Text(user.name),
          subtitle: Text(user.about, overflow: TextOverflow.ellipsis,),
        ),
      ),
    );
  }
}