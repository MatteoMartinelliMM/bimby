import 'package:bimby/components/ListaClientiItem.dart';
import 'package:bimby/model/Cliente.dart';
import 'package:bimby/screen/ClienteDetail.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ConsultazioneClienti extends StatefulWidget {
  List<String> elements = new List();
  bool workPhase, multiSelection;

  @override
  State<StatefulWidget> createState() {
    return new ConsultazioneClientiState();
  }
}

class ConsultazioneClientiState extends State<ConsultazioneClienti> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text('Totale: ' + widget.elements.length.toString())),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Bimby',
                          letterSpacing: 12),
                      children: buildActions())),
            )
          ],
        ),
        Expanded(
          child: Scrollbar(
            isAlwaysShown: true,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: widget.elements.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed(
                          ClienteDetail.route,
                          arguments: new Cliente.mock('LUCCHINI LORENZO',
                              'Via San Savino 31, 40129 Bologna')),
                      child: ListaClientiItem(
                          nome: 'LUCCHINI LORENZO',
                          indirizzo: 'Via San Savino 31, 40129 Bologna',
                          modello: 'TMG',
                          dataAcquisto: '28/03/2020',
                          tipoContratto: 'N/D',
                          contratto: 'Nessuno'),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }

  List<TextSpan> buildActions() {
    List<TextSpan> spans = new List();
    spans.add(
        TextSpan(text: '', recognizer: TapGestureRecognizer()..onTap)); //INFO
    if (!widget.workPhase) {
      if (widget.multiSelection) {
        spans.add(TextSpan(
            text: '',
            recognizer: TapGestureRecognizer()..onTap)); //SELEZIONA TUTTO
        spans.add(TextSpan(
            text: '',
            recognizer: TapGestureRecognizer()
              ..onTap)); //MARCA COME DA LAVORARE
        spans.add(TextSpan(
            text: '',
            recognizer: TapGestureRecognizer()
              ..onTap)); //MARCA COME NON DA LAVORARE
        spans.add(TextSpan(
            text: '',
            recognizer: TapGestureRecognizer()
              ..onTap = multiSelectionMode)); //CHIUDI MULTISELEZIONE
      } else {
        spans.add(TextSpan(
            text: '',
            recognizer: TapGestureRecognizer()
              ..onTap = multiSelectionMode)); //MULTISELEZIONE
        spans.add(TextSpan(
            text: '', recognizer: TapGestureRecognizer()..onTap)); //FILTRI
      }
    }
    return spans;
  }

  void multiSelectionMode() {
    setState(() {
      widget.multiSelection = !widget.multiSelection;
    });
  }

  @override
  void initState() {
    widget.elements.add("");
    widget.multiSelection = false;
    widget.workPhase = false;
  }
}
