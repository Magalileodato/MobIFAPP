import 'package:flutter/material.dart';
import 'inscricao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Participantes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CadastroMobilidadeInternacional(
          title: 'Cadastro de Participantes'),
    );
  }
}

class CadastroMobilidadeInternacional extends StatelessWidget {
  final String title;

  const CadastroMobilidadeInternacional({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin:
                  const EdgeInsets.only(top: 20), // Espaço superior da imagem
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/login.JPG',
                  width: 50, // Tamanho da imagem
                  height: 50,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'MobIFAPP',
              style: TextStyle(
                fontSize: 15, // Tamanho da Fonte
                fontWeight: FontWeight.bold, // Estilo da fonte negrito
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Alinhando o texto no centro
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 4, // Espessura da linha
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(height: 20),
            // Adicionando o formulário de cadastro
            const TelaCadastro(),
          ],
        ),
      ),
    );
  }
}

// TelaCadastro é um StatefulWidget responsável pela tela de cadastro.
class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

// _TelaCadastroState é a classe que mantém o estado da tela de cadastro.
class _TelaCadastroState extends State<TelaCadastro> {
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _dataNascimentoController =
      TextEditingController();

  @override
  void dispose() {
    _cpfController.dispose();
    _dataNascimentoController.dispose();
    super.dispose();
  }

  void _submitForm() {
    // Obtém o CPF e a data de nascimento digitados
    String cpf = _cpfController.text;
    String dataNascimento = _dataNascimentoController.text;

    // Lógica para verificar se o usuário está cadastrado
    bool isCadastrado = _verificarCadastro(cpf, dataNascimento);
    if (isCadastrado) {
      // Usuário já cadastrado, exibir mensagem ou realizar alguma ação
      Logger.d('Usuário já cadastrado');
    } else {
      // Redirecionar para a página de inscrição
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                InscricaoScreen(cpf: cpf, dataNascimento: dataNascimento)),
      );
    }
  }

  bool _verificarCadastro(String cpf, String dataNascimento) {
    // Lógica de verificação de cadastro (Exemplo simplificado)
    // Aqui você pode adicionar a lógica para verificar se o usuário já está cadastrado
    // Atualmente, sempre retorna falso para fins de demonstração
    return false;
  }

  void _entrar() {
    // Lógica para entrar
    Logger.d('Entrou');
  }

  void _atualizar() {
    // Lógica para atualizar
    Logger.d('Dados atualizados');
  }

  void _excluir() {
    // Lógica para excluir
    Logger.d('Dados excluídos');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Campo de entrada para o CPF
          TextField(
            controller: _cpfController,
            decoration: const InputDecoration(
              labelText: 'CPF',
            ),
          ),
          const SizedBox(height: 16.0),
          // Campo de entrada para a data de nascimento
          TextField(
            controller: _dataNascimentoController,
            decoration: const InputDecoration(
              labelText: 'Data de Nascimento (DD/MM/AAAA)',
            ),
          ),
          const SizedBox(height: 32.0),
          // Botões adicionais lado a lado
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Cadastrar'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: _entrar,
                child: const Text('Entrar'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: _atualizar,
                child: const Text('Atualizar'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: _excluir,
                child: const Text('Excluir'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Classe Logger para registrar as informações.
class Logger {
  static void d(String s) {
    // Implementação do log aqui.
    print(s);
  }
}
