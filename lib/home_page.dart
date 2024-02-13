
import 'package:lottie/lottie.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class LottiePage extends StatefulWidget {
  const LottiePage({super.key});

  @override
  State<LottiePage> createState() => _HomePageState();
}

class _HomePageState extends State<LottiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile Card'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTileCard(            
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.-XWKrQsGzY8tWIubGiJ1HwHaHa?w=188&h=187&c=7&r=0&o=5&dpr=1.1&pid=1.7'),
            ),
            title: const Text('Tap to Expand'),            
            children: [
              const Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Lottie.network(
                        "https://lottie.host/3453fb66-e61d-4bfc-b790-58152522213e/XAnWWUf74D.json",height: 350,width: 350)),          
              ),              
            ],
          ),
        ),        
      ]),
    );
  }
}
