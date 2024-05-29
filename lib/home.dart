import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;

  const Home({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            Container(
              margin:
                  const EdgeInsets.only(top: 20), // Espaço superior da imagem
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/livro.JPG',
                  width: 100, // Ajustado tamanho da imagem
                  height: 100,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'MobIFAPP',
              style: TextStyle(
                fontSize: 20, // Ajustado tamanho da fonte
                fontWeight: FontWeight.bold, // Estilo da fonte negrito
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Alinhando o texto no centro
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 2, // Espessura da linha
              indent: 10,
              endIndent: 10,
            ),
            const SizedBox(height: 20),
            _buildHome(
              descricao: 'MobIFAPP',
              funcionalidade:
                  'Mobilidade internacional - Funcionalidades: - Permitir através da exibição de um mapa demonstrar os alunos e servidores que estão vinculados ao IFRJ que estão em outras instituições estrangeiras. - Ter o deadline (prazo) para conclusão da mobilidade. - Permitir saber se a internacionalização está sendo patrocinada por algum órgão de fomento. - Descrever procedimentos e roteiro para receber estudantes e professores que são originários de outras instituições estrangeiras. - Guia de apoio para a recepção de alunos e professores estrangeiros, fornecendo possíveis cidades e bairros para a estadia, detalhando os possíveis custos. - Guia de apoio contendo os pontos turísticos por região no estado do Rio de Janeiro.',
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHome(
      {required String descricao,
      required String funcionalidade,
      required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          descricao,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          funcionalidade,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Home(title: 'Home'),
  ));
}
