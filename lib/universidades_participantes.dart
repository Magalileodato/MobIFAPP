import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// Widget para a página de participantes itinerantes
class ParticipantesItinerantes extends StatelessWidget {
  const ParticipantesItinerantes({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Participantes Itinerantes'),
      ),
      // Chama o estado ParticipantesItinerantesScreen, passando o título
      body: ParticipantesItinerantesScreen(title: title),
    );
  }
}

// Estado para a página de participantes itinerantes
class ParticipantesItinerantesScreen extends StatefulWidget {
  final String title;

  const ParticipantesItinerantesScreen({Key? key, required this.title})
      : super(key: key);

  @override
  State<ParticipantesItinerantesScreen> createState() =>
      ParticipantesItinerantesScreenState();
}

class ParticipantesItinerantesScreenState
    extends State<ParticipantesItinerantesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // Usa o título passado pelo widget
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/itinerante.JPG',
                  width: 50, // Tamanho da imagem
                  height: 50,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'MobIFAPP',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 4,
              indent: 10,
              endIndent: 10,
            ),
          ],
        ),
      ),
    );
  }
}

// Widget para o mapa com marcadores
class MapaComMarcadores extends StatefulWidget {
  const MapaComMarcadores({super.key});

  @override
  MapaComMarcadoresState createState() => MapaComMarcadoresState();
}

class MapaComMarcadoresState extends State<MapaComMarcadores> {
  late GoogleMapController
      mapController; // Marcando mapController como late para indicar que ela será inicializada posteriormente.

  final LatLng _centroMapa = const LatLng(-23.550520, -46.633308);
  final List<Marker> _markers = []; // Lista de marcadores

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa com Marcadores'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _centroMapa,
          zoom: 10.0,
        ),
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
          setState(() {
            _markers.add(
              const Marker(
                markerId: MarkerId('id_1'),
                position: LatLng(-23.550520, -46.633308),
                infoWindow: InfoWindow(
                  title: 'Marcador 1',
                  snippet: 'Descrição do marcador 1',
                ),
              ),
            );
          });
        },
        markers: Set.from(_markers),
      ),
    );
  }
}

// Widget para a página de universidades participantes
class UniversidadesParticipantes extends StatelessWidget {
  const UniversidadesParticipantes({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Universidades Participantes'),
      ),
      body: UniversidadesParticipantesScreen(title: title),
    );
  }
}

class UniversidadesParticipantesScreen extends StatefulWidget {
  final String title;

  const UniversidadesParticipantesScreen({Key? key, required this.title})
      : super(key: key);

  @override
  State<UniversidadesParticipantesScreen> createState() =>
      UniversidadesParticipantesScreenState();
}

class UniversidadesParticipantesScreenState
    extends State<UniversidadesParticipantesScreen> {
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
              padding: const EdgeInsets.symmetric(
                  vertical: 10), // Adiciona um espaçamento interno
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                        top: 20), // Adiciona espaço acima da imagem
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/images/livro.jpg',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'MobIFAPP',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold, // Deixa o texto em negrito
                      color: Colors.white, // Adiciona a cor branca ao texto
                    ),
                    textAlign:
                        TextAlign.center, // Deixando o texto centralizado
                  ),
                  const SizedBox(
                      height: 15), // Espaço em branco antes da linha horizontal
                  const Divider(
                    height: 10,
                    color: Colors
                        .white, // Ajuste da cor e criação de uma linha horizontal
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

void main() {
  runApp(const MaterialApp(
    home: ParticipantesItinerantes(title: 'MobIFAPP'),
  ));
}
