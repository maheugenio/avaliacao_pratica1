import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Texto extends StatefulWidget {

  final conteudo;
  final fonteTamanho;
  final fonteCor;

  const Texto({super.key, this.conteudo, this.fonteTamanho, this.fonteCor});

  @override
  State<Texto> createState() => _TextoState();
}

class _TextoState extends State<Texto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        widget.conteudo,
        style: TextStyle(
          fontSize: widget.fonteTamanho,
          color: widget.fonteCor
        ),
      ),
    );
  }
}