import 'package:flutter/material.dart';


class ParticipantesItinerantes extends StatelessWidget {
  const ParticipantesItinerantes({Key? key, required String title}) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Participantes Itinerantes'),
      ),
      body: const _ParticipantesItinerantesState(title: 'Universidade sem Fronteiras'),
    );
  }
}

class _ParticipantesItinerantesState extends StatefulWidget {
  final String title;

  const _ParticipantesItinerantesState({Key? key, required this.title}) : super(key: key);

  @override
  State<_ParticipantesItinerantesState> createState() => _ParticipantesItinerantesStateState();
}

class _ParticipantesItinerantesStateState extends State<_ParticipantesItinerantesState> {
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
// Widget para o mapa com marcadores
class MapaComMarcadores extends StatefulWidget {
  const MapaComMarcadores({super.key});

  @override
  
  @override
MapaComMarcadoresState createState() => MapaComMarcadoresState();

}

class MapaComMarcadoresState extends State<MapaComMarcadores> {
  late GoogleMapController mapController; // Marcando mapController como late 
                                          //  para indicar que ela será inicializada posteriormente.
                                          // verificar como funciona

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

void main() {
  runApp(const MaterialApp(
    home: MapaComMarcadores(),
  ));
}

