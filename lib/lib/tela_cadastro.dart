// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';


class TelaCadastro extends StatelessWidget {
  const TelaCadastro({Key? key, required String title}) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre-se'),
      ),
      body: const _PontosTuristicosState(title: 'Universidade sem Fronteiras'),
    );
  }
}

class _PontosTuristicosState extends StatefulWidget {
  final String title;

  const _PontosTuristicosState({Key? key, required this.title}) : super(key: key);

  @override
  State<_PontosTuristicosState> createState() => _PontosTuristicosStateState();
}

class _PontosTuristicosStateState extends State<_PontosTuristicosState> {
  // Criação do slogn da página
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20), // Espaço supeior da imagem
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'images/livro.jpg',
                  width: 50, //Tamanho da imagem
                  height: 50,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Universidade sem Fronteiras',
              style: TextStyle(
                fontSize: 15, // Tamanho da Fonte
                fontWeight: FontWeight.bold, //Estilo da fonte negrito
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Aliando o texto no centro
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 4, // Espesura da linha
              indent: 10,
              endIndent: 10,
            ),
          ], 
        ),
      ),
    );
  }
}

//Açoes referente a págiana 


class TelaCastro extends StatefulWidget {
  const TelaCastro({Key? key}) : super(key: key);

  @override
  _TelaCastroState createState() => _TelaCastroState();
}

class _TelaCastroState extends State<TelaCastro> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
            ),
            const SizedBox(height: 32.0),
            RaisedButton(
              onPressed: () {
                String email = _emailController.text;
                String password = _passwordController.text;
                print('Novo Email: $email');
                print('Nova Senha: $password');
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
  
  RaisedButton({required Null Function() onPressed, required Text child}) async {}
}
