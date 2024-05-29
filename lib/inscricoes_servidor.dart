import 'package:flutter/material.dart';

class InscricaoServidor extends StatelessWidget {
  final String instituicao;
  final String curso;

  const InscricaoServidor({
    Key? key,
    required this.instituicao,
    required this.curso,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscrição Servidor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nome do Servidor'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Área de Atuação'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Instituição de Origem'),
              initialValue: instituicao,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Curso'),
              initialValue: curso,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Data de Nascimento'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Identificação Pessoal'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Cidade'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'País'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Bairro'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Estado'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para submeter o formulário
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
