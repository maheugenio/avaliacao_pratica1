import 'dart:convert';

import 'package:avaliacao_pratica1/componentes/texto.dart';
import 'package:avaliacao_pratica1/componentes/texto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:avaliacao_pratica1/main.dart';
import 'package:http/http.dart';

import '../componentes/botao.dart';

class PgMoedas extends StatefulWidget {
  const PgMoedas({super.key});

  @override
  State<PgMoedas> createState() => _PgMoedasState();
}

class _PgMoedasState extends State<PgMoedas> {

  //Moedas
  dynamic valorDolar = "";
  dynamic variaDolar = "";
  
  dynamic valorPeso = "";
  dynamic variaPeso = "";

  dynamic valorEuro = "";
  dynamic variaEuro = "";

  dynamic valorYen = "";
  dynamic variaYen = "";

  //Ações
  dynamic ibovespa = "";
  dynamic variaIbovespa = "";

  dynamic ifix = "";
  dynamic variaIfix = "";

  dynamic nasdaq = "";
  dynamic variaNasdaq = "";

  dynamic dowjones = "";
  dynamic variaDowjones = "";

  dynamic cac = "";
  dynamic variaCac = "";
 
  dynamic nikkei = "";
  dynamic variaNikkei = "";

  //Bitcoin
  dynamic blockchainInfo = "";
  dynamic variaBlockchainInfo = "";

  dynamic coinbase = "";
  dynamic variaCoinbase = "";

  dynamic bitStamp = "";
  dynamic variaBitStamp = "";
  
  dynamic foxBit = "";
  dynamic variaFoxBit = "";

  dynamic mercadoBitcoin = "";
  dynamic variaMercadoBitcoin = "";

  consultaMoeda() async {
    final String urlViaFinancas = 'https://financa.hgbrasil.com/finance?key=34174b0f&format=json-cors';
  Response respostaFinanca = await get(Uri.parse(urlViaFinancas));
  Map financa = json.decode(respostaFinanca.body);

  setState(() {
    //Valores
    valorDolar = financa['results']['currencies']['USD']['buy'];
    valorEuro = financa['results']['currencies']['EUR']['buy'];
    valorPeso = financa['results']['currencies']['ARS']['buy'];
    valorYen = financa['results']['currencies']['JPY']['buy'];

    ibovespa = double.parse("${financa['results']['stocks']['IBOVESPA']['points']}");
    ifix = double.parse("${financa['results']['stocks']['IFIX']['points']}");
    nasdaq = double.parse("${financa['results']['stocks']['NASDAQ']['points']}");
    dowjones = double.parse("${financa['results']['stocks']['DOWJONES']['points']}");
    cac = double.parse("${financa['results']['stocks']['CAC']['points']}");
    nikkei = double.parse("${financa['results']['stocks']['NIKKEI']['points']}");

    blockchainInfo = double.parse("${financa['results']['bitcoin']['blockchain_info']['last']}");
    coinbase = double.parse("${financa['results']['bitcoin']['coinbase']['last']}");
    bitStamp = double.parse("${financa['results']['bitcoin']['bitstamp']['last']}");
    foxBit = double.parse("${financa['results']['bitcoin']['foxbit']['last']}");
    mercadoBitcoin = double.parse("${financa['results']['bitcoin']['mercadobitcoin']['last']}");

    //Variações
    variaDolar = double.parse("${financa['results']['currencies']['USD']['variation']}");
    variaEuro = double.parse("${financa['results']['currencies']['EUR']['variation']}");
    variaPeso = double.parse("${financa['results']['currencies']['ARS']['variation']}");
    variaYen = double.parse("${financa['results']['currencies']['JPY']['variation']}");

    variaIbovespa = double.parse("${financa['results']['stocks']['IBOVESPA']['variation']}");
    variaIfix = double.parse("${financa['results']['stocks']['IFIX']['variation']}");
    variaNasdaq = double.parse("${financa['results']['stocks']['NASDAQ']['variation']}");
    variaDowjones = double.parse("${financa['results']['stocks']['DOWJONES']['variation']}");
    variaCac = double.parse("${financa['results']['stocks']['CAC']['variation']}");
    variaNikkei = double.parse("${financa['results']['stocks']['NIKKEI']['variation']}");

    variaBlockchainInfo = double.parse("${financa['results']['bitcoin']['blockchain_info']['variation']}");
    variaCoinbase = double.parse("${financa['results']['bitcoin']['coinbase']['variation']}");
    variaBitStamp = double.parse("${financa['results']['bitcoin']['bitstamp']['variation']}");
    variaFoxBit = double.parse("${financa['results']['bitcoin']['foxbit']['variation']}");
    variaMercadoBitcoin = double.parse("${financa['results']['bitcoin']['mercadobitcoin']['variation']}");
  });
  }

  @override
  Widget build(BuildContext context) {
    
    irParaAcoes() {
        Navigator.pushNamed(context, '/acoes');
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
                      "MOEDAS",
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