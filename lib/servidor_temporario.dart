import 'package:flutter/material.dart';
import 'inscricoes_servidor.dart';

class ServidorTemporario extends StatelessWidget {
  final String title;

  const ServidorTemporario({Key? key, required this.title}) : super(key: key);

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
                  'assets/images/livro.JPG',
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
            // Informações das instituições conveniadas
            _buildServidorTemporario(
              nome: 'Universidade X',
              curso: 'Engenharia de Software',
              pais: 'Brasil',
              cidade: 'São Paulo',
              descricaoVaga: 'Professor Engenharia ',
              quantidadeVagas: 5,
              dataAberturaEdital: '01/07/2024',
              dataFinalizacaoEdital: '15/07/2024',
              context: context,
            ),
            const SizedBox(height: 20),
            _buildServidorTemporario(
              nome: 'Universidade Y',
              curso: 'Ciência da Computação',
              pais: 'Estados Unidos',
              cidade: 'Nova York',
              descricaoVaga: 'Professor Calculo I,II & III',
              quantidadeVagas: 3,
              dataAberturaEdital: '10/07/2024',
              dataFinalizacaoEdital: '25/07/2024',
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServidorTemporario({
    required String nome,
    required String curso,
    required String pais,
    required String cidade,
    required String descricaoVaga,
    required int quantidadeVagas,
    required String dataAberturaEdital,
    required String dataFinalizacaoEdital,
    required BuildContext context,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Instituição: $nome - $curso',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text('País: $pais - Cidade: $cidade'),
        SizedBox(height: 5),
        Text('Descrição da Vaga: $descricaoVaga - Vagas: $quantidadeVagas'),
        SizedBox(height: 5),
        Text('Abertura do Edital: $dataAberturaEdital'),
        SizedBox(height: 5),
        Text('Finalização do Edital: $dataFinalizacaoEdital'),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                // Lógica para abrir o link do edital
                // _launchURL(linkEdital); // Removido
              },
              child: Text('Visualizar Edital',
                  style: TextStyle(color: Colors.blue)),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InscricaoServidor(
                      instituicao: nome,
                      curso: curso,
                    ),
                  ),
                );
              },
              child: Text('Inscrição', style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
        const Divider(
          height: 20,
          color: Colors.black,
          thickness: 1, // Espessura da linha
          indent: 10,
          endIndent: 10,
        ),
      ],
    );
  }
}

