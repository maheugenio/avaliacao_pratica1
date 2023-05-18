import 'dart:convert';
import 'package:avaliacao_pratica1/telas/pg_acoes.dart';
import 'package:avaliacao_pratica1/telas/pg_bitcoin.dart';
import 'package:avaliacao_pratica1/telas/pg_moedas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/moedas",
      routes: {
        "/moedas" :(context) => const PgMoedas(),
        "/acoes" :(context) => const PgAcoes(),
        "/bitcoin" :(context) => const PgBitcoin(),
      },
    );
  }


}