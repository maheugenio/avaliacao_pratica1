import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../componentes/botao.dart';
import '../componentes/texto.dart';

class PgAcoes extends StatefulWidget {
  const PgAcoes({super.key});

  @override
  State<PgAcoes> createState() => _PgAcoesState();
}

class _PgAcoesState extends State<PgAcoes> {
  @override
  Widget build(BuildContext context) {
     final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    
    final ibovespa = args['_ibovespa'];
    final ifix = args['_ifix'];
    final nasdaq = args['_nasdaq'];
    final dowjones = args['_dowjones'];
    final cac = args['_cac'];
    final nikkei = args['_nikkei'];
    
    final blockChain = args['_blockchain'];
    final coinbase = args['_coinbase'];
    final bitStamp = args['_bitstamp'];
    final foxBit = args['_foxbit'];
    final mercadoBitcoin = args['_bitcoin'];
    
    //Variações
    final variaIbovespa = args['_vibovespa'];
    final variaIfix = args['_vifix'];
    final variaNasdaq = args['_vnasdaq'];
    final vdowjones = args['_vdowjones'];
    final variaCac = args['_vcac'];
    final variaNikkei = args['_vnikkei'];

    final variaBlockchain = args['_vblockchain'];
    final variaCoinbase = args['_vcoinbase'];
    final variaBitStamp = args['_vbitstamp'];
    final variaFoxBit = args['_vfoxbit'];
    final variaMercadoBitcoin = args['_vbitcoin'];


    irParaBitcoin() {
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