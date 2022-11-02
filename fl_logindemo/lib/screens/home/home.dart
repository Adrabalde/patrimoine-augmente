import 'package:fl_logindemo/services/auth.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}


class _Home extends State<Home>{
  final AuthService _auth = new AuthService();

  @override
  Widget build(BuildContext context) {


  final SignOut = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
    color: Colors.green,
    child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
           await _auth.signOut();
        },
        child: Text(
          "Se déconnecter",
          style: TextStyle(color: Theme.of(context).primaryColorLight),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('City Heritage Care - Page d\'accueil'),
          backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(child: SignOut),
    );
  }
}