import 'package:flutter/material.dart';


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
                  'assets/images/alunos.JPG',
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
            _buildServidorTemporario(context: context),
          ],
        ),
      ),
    );
  }

  Widget _buildServidorTemporario({required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            'Manual do Servidor – Contratação de Professor Visitante/Visitante Estrangeiro – PSS já realizado',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'DEFINIÇÃO\n'
            'A contratação de Professor Visitante e/ou Visitante Estrangeiro é a modalidade de contratação temporária, por tempo determinado, visando atender a necessidade de excepcional interesse público, dos órgãos da Administração Federal direta, das autarquias e das fundações públicas, nas condições e prazos previstos na Lei nº 8.745, de 9 de dezembro de 1993.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'REQUISITOS BÁSICOS\n'
            'A contratação de professores visitantes e professores visitantes estrangeiros poderá ser autorizada pelo dirigente da instituição, condicionada à existência de recursos orçamentários e financeiros para fazer frente às despesas decorrentes da contratação e ao quantitativo máximo de contratos estabelecido para a IFE.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'INFORMAÇÕES IMPORTANTES\n'
            'A contratação de Professor Visitante tem como objetivo:\n'
            'I – apoiar a execução e o desenvolvimento dos Programas de Pós-Graduação Stricto Sensu (Mestrado e Doutorado);\n'
            'II – oferecer condições para que professores de competência e capacidade comprovadas, provenientes de outros centros de ensino e pesquisa do país ou do exterior, contribuam para o aprimoramento de Programas de Ensino de Pós-Graduação e Pesquisa;\n'
            'III – contribuir para a execução de programas de capacitação de docentes;\n'
            'IV – viabilizar a participação de cientistas de alto nível nas equipes docentes e discentes da Instituição, visando propiciar o intercâmbio acadêmico, científico e cultural, em nível institucional, nacional e internacional.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'PROCEDIMENTO E DOCUMENTAÇÃO\n'
            '• Oficio de contratação de Professor Visitante, com a devida justificativa;\n'
            '• Plano de Trabalho Individual (PIT) do Visitante para o bienio;\n'
            '• Edital de abertura do PSS;\n'
            '• Edital de homologação do resultado publicado no Diário Oficial da União;\n'
            '• Caso exista, Edital de prorrogação do prazo de validade do PSS.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'FLUXO PROCESSO\n'
            '1. Processo Eletrônico: Abrir processo via SIPAC (login>mesa virtual>abrir processo)\n'
            '2. Unidade Acadêmica: Encaminhar documentos: Oficio solicitando a contratação do Visitante aprovado, Ata de aprovação da contratação;\n'
            '3. PROPLAN: Realiza a análise do Banco de Equivalente e informa a viabilidade de contratação e envia a PROPESP;\n'
            '4. PROPESP: Autoriza a contratação do Visitante\n'
            '5. CSA: Faz a convocação do visitante e contrata.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'FUNDAMENTO LEGAL\n'
            'Lei nº 8.745/93, Decreto n. nº 9.739/2019, DECRETO Nº 7.485, DE 18 DE MAIO DE 2011, Resolução n. 5.087/2018 – CONSEPE Resolução n., 5.030/2020 CONSEPE. Resolução das Unidades proponentes do PSS.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            'RESPONSÁVEL\n'
            'Coordenadoria de Seleção e Admissão – CSA\n'
            'Localização: Prédio da Reitoria 1º andar sala 17\n'
            'E-mail: csa-progep@ufpa.br',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
