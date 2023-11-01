import 'package:flutter/material.dart';
import 'package:flutterando_aula/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 300,
            height: 300,
            child: Image.asset('assets/images/cv.png')),
        Container(
          height: 20,
        ),
        Card(
            child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'E-mail', border: OutlineInputBorder()),
              ),
              Container(
                height: 20,
              ),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Senha', border: OutlineInputBorder()),
              ),
              Container(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (email == 'bruno@gmail.com' && password == '123') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      AlertDialog(
                        title: const Text('login inváliudo'),
                        content: Text('hello'),
                      );
                    }
                  },
                  child: Container(
                      width: double.infinity,
                      child: Text(
                        'Entrar',
                        textAlign: TextAlign.center,
                      ))),
            ],
          ),
        )),
        Container(
          height: 20,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/images/background.jpg',
                  fit: BoxFit.cover)),
          Container(color: Colors.black.withOpacity(0.3)),
          _body(),
        ],
      ),
    );
  }
}
