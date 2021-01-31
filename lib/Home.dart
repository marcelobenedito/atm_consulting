import 'package:atm_consulting/ClientScreen.dart';
import 'package:atm_consulting/CompanyScreen.dart';
import 'package:atm_consulting/ContactScreen.dart';
import 'package:atm_consulting/ServiceScreen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _openCompany() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CompanyScreen())
    );
  }

  void _openService() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ServiceScreen())
    );
  }

  void _openClient() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ClientScreen())
    );
  }

  void _openContact() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ContactScreen())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consulting"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/menu_empresa.png"),
                    onTap: _openCompany,
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_servico.png"),
                    onTap: _openService,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/menu_cliente.png"),
                    onTap: _openClient,
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_contato.png"),
                    onTap: _openContact,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
