class _UniversidadesParticipantesState extends StatefulWidget {
  final String title;

  const _UniversidadesParticipantesState({Key? key, required this.title}) : super(key: key);

  @override
  State<_UniversidadesParticipantesState> createState() => _UniversidadesParticipantesStateState();
}

class _UniversidadesParticipantesStateState extends State<_UniversidadesParticipantesState> {
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
              color: Colors.blue, // Define a cor de fundo como azul
              padding: const EdgeInsets.symmetric(vertical: 10), // Adiciona um espaçamento interno
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 20), // Adiciona espaço acima da imagem
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'images/livro.jpg',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Universidade sem Fronteiras',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold, //Deixa o texto em negrito
                      color: Colors.white, // Adiciona a cor branca ao texto
                    ),
                    textAlign: TextAlign.center, // deixando o texto centralizado
                  ),
                  const SizedBox(height: 15), // Espaço em branco antes da linha horizontal
                  const Divider(
                    height: 10,
                    color: Colors.white, // Ajuste da  cor e criação de uma linha orizontal 
                    thickness: 4, // Ajuste a espessura da linha 
                    indent: 12, // Espaçamento à esquerda
                    endIndent: 10, // Espaçamento à direita
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Ações para serem feitas
