import 'package:flutter/material.dart';


void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController senhaController = TextEditingController();

    String emailCorreto = 'usuario@example.com';
    String senhaCorreta = 'senha123';

    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Imagem na parte superior
              Image.asset(
                'assets/images/login_02.jpg', // Caminho para a imagem de fundo
                height: 200.0, // Altura da imagem
                fit: BoxFit.cover, // Ajuste da imagem para cobrir toda a área verificar
              ),
              const SizedBox(height: 20.0), // Espaçamento entre a imagem e os campos de entrada

              // Área de login com email e senha
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email', 
                ),
              ),
              const SizedBox(height: 10.0), // Espaçamento entre os campos de email e senha

              TextField(
                controller: senhaController,
                obscureText: true, // Esconder o texto digitado para a senha
                decoration: const InputDecoration(
                  hintText: 'Senha', 
                ),
              ),
              const SizedBox(height: 20.0), // Espaçamento entre os campos de entrada e os botões de ação

              // Botão de Login
              ElevatedButton(
                onPressed: () {
                  // Verifica se o email e a senha fornecidos são válidos
                  if (emailController.text == emailCorreto &&
                      senhaController.text == senhaCorreta) {
                    // Se forem válidos, exibe uma mensagem de sucesso
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Login bem-sucedido'),
                          content: const Text('Bem-vindo!'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                // Fecha o diálogo
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    // Se não forem válidos, exibe uma mensagem de erro
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Erro de login'),
                          content: const Text('Email ou senha incorretos.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                // Fecha o diálogo
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Login'), 
              ),
              const SizedBox(height: 20.0), // Espaçamento entre os botões de ação

              // Botão de Cadastro no centro da tela
              ElevatedButton(
                onPressed: () {
                  // Navegue para a tela de cadastro
                },
                child: const Text('Cadastre-se'), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
