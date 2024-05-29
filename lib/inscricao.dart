import 'package:flutter/material.dart';

class InscricaoScreen extends StatelessWidget {
  final String cpf;
  final String dataNascimento;

  const InscricaoScreen(
      {Key? key, required this.cpf, required this.dataNascimento})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscrição Completa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'País'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'UF/Região'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'Cidade'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'Curso'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Instituição de Origem'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration:
                  const InputDecoration(labelText: 'Instituição de Destino'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'Escolaridade'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'Tipo de Vínculo'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'Anexar Documentos'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'CEP'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'CPF'),
              controller: TextEditingController(text: cpf),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'RG'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Data de Nascimento (DD/MM/AAAA)'),
              controller: TextEditingController(text: dataNascimento),
            ),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Lógica para anexar arquivo
                    Logger.d('Arquivo anexado');
                  },
                  child: const Text('Anexar Arquivo'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Lógica para salvar o cadastro completo
                    Logger.d('Cadastro completo salvo');
                    Navigator.pop(context);
                  },
                  child: const Text('Salvar Cadastro'),
                ),
              ],
            ),
          ],
        ),
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
