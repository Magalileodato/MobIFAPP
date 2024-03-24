import 'package:flutter/material.dart';

class CadastroParticipantes extends StatelessWidget {
  const CadastroParticipantes ({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro dos Participantes'),
      ),
      body: const _CadastroParticipantesState(title: 'Universidade sem Fronteiras'),
    );
  }
}

class _CadastroParticipantesState extends StatefulWidget {
  final String title;

  const _CadastroParticipantesState({Key? key, required this.title}) : super(key: key);

  @override
  State<_CadastroParticipantesState> createState() => _CadastroParticipantesStateState();
}

class _CadastroParticipantesStateState extends State<_CadastroParticipantesState> {
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

// TelaCastro é um StatefulWidget responsável pela tela de cadastro.
class TelaCastro extends StatefulWidget {
  const TelaCastro({Key? key}) : super(key: key);

  @override
  _TelaCastroState createState() => _TelaCastroState();
}

// _TelaCastroState é a classe que mantém o estado da tela de cadastro.
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
              controller: _passwordController,
              obscureText: true, // Mascara o texto digitado
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
            ),
            const SizedBox(height: 32.0),
             // Botão para submeter o formulário de cadastro.
            ElevatedButton(
              onPressed: () {
                // Obtém o email e a senha digitados
                String email = _emailController.text;
                String password = _passwordController.text;
                // Registra o novo email e senha utilizando o logger.
                logeer.d('Novo Email: $email');
                logeer.d('Nova Senha: $password');
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
  
}
// Não é necessário definir o mixin logeer neste caso, 
// porque estamos usando o logger diretamente no _TelaCastroState.
mixin logeer {
  static void d(String s) {}
}


