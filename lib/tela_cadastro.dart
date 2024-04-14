import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre-se'),
      ),
      body: const CadastroForm(), // Chamando o widget do formulário de cadastro
    );
  }
}

class CadastroForm extends StatefulWidget {
  const CadastroForm({Key? key}) : super(key: key);

  @override
   createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Campo de entrada para o email.
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 16.0),
          // Campo de entrada para a senha.
          TextField(
            controller: _senhaController,
            obscureText: true, // Mascara o texto digitado
            decoration: const InputDecoration(
              labelText: 'Senha',
            ),
          ),
          const SizedBox(height: 32.0),
           // Botão para submeter o formulário de cadastro.
          ElevatedButton(
            onPressed: () async {
              await _criarConta();
            },
            child: const Text('Cadastrar'),
          ),
        ],
      ),
    );
  }

  // Método para lidar com a criação de conta
  Future<void> _criarConta() async {
    // Obtém o email e a senha digitados
    String email = _emailController.text;
    String senha = _senhaController.text;

    try {
      // Cria a conta no Firebase Authentication
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );

      // Exibe uma mensagem de sucesso
      _mostrarAlerta('Sucesso', 'Conta criada com sucesso!');
    } catch (e) {
      // Exibe uma mensagem de erro se ocorrer algum problema
      _mostrarAlerta('Erro', 'Erro ao criar a conta: $e');
    }

    // Limpar os campos após a criação da conta
    _emailController.clear();
    _senhaController.clear();
  }

  // Método para exibir um alerta
  void _mostrarAlerta(String titulo, String mensagem) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(titulo),
        content: Text(mensagem),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
