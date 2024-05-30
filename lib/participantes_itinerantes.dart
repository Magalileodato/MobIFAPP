import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// Widget para a página de participantes itinerantes
class ParticipantesItinerantes extends StatelessWidget {
  final String title;
  const ParticipantesItinerantes({Key? key, required this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // Chama o estado _ParticipantesItinerantesState, passando o título
      body: _ParticipantesItinerantesState(title: title),
    );
  }
}

// Estado para a página de participantes itinerantes
class _ParticipantesItinerantesState extends StatefulWidget {
  final String title;

  const _ParticipantesItinerantesState({Key? key, required this.title}) : super(key: key);

  @override
  State<_ParticipantesItinerantesState> createState() => _ParticipantesItinerantesStateState();
}

class _ParticipantesItinerantesStateState extends State<_ParticipantesItinerantesState> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'images/livro.jpg',
                width: 50,
                height: 50,
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Universidade sem Fronteiras',
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
    );
  }
}

// Widget para o mapa com marcadores
class MapaComMarcadores extends StatefulWidget {
  const MapaComMarcadores({Key? key}) : super(key: key);

  @override
  MapaComMarcadoresState createState() => MapaComMarcadoresState();
}

class MapaComMarcadoresState extends State<MapaComMarcadores> {
  late GoogleMapController mapController;
  final LatLng _centroMapa = const LatLng(-23.550520, -46.633308);
  final List<Marker> _markers = [];

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
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MapaComMarcadores()),
            );
          },
          child: const Text('Ir para Mapa com Marcadores'),
        ),
      ),
    );
  }
}
