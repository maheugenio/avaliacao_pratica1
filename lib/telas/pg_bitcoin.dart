import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../componentes/botao.dart';
import '../componentes/texto.dart';

class PgBitcoin extends StatefulWidget {
  const PgBitcoin({super.key});

  @override
  State<PgBitcoin> createState() => _PgBitcoinState();
}

class _PgBitcoinState extends State<PgBitcoin> {
  @override
  Widget build(BuildContext context) {
  
   final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    
    final blockchain = args['_blockchain'];
    final coinbase = args['_coinbase'];
    final bitstamp = args['_bitstamp'];
    final foxbit = args['_foxbit'];
    final bitcoin = args['_bitcoin'];
    
    final variaBlockchain = args['_vblockchain'];
    final variaCoinbase = args['_vcoinbase'];
    final variaBitStamp = args['_vbitstamp'];
    final variaFoxBit = args['_vfoxbit'];
    final variaMercadoBitcoin = args['_vbitcoin'];

    irParaPgPrincipal() {
        Navigator.pushNamed(context, '/bitcoin');
    }

     return Scaffold(
      appBar: AppBar(
        title: const Text('Finanças de Hoje'),
        backgroundColor: Color.fromARGB(255, 12, 74, 13),
      ),
      // ignore: prefer_const_constructors
      body: Padding(
        padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      "AÇÕES",
                      style: const TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold))
                  ),
              ),
            ],
          ),     
        ),
    );
  }
}