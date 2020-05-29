import 'dart:ui';

import 'package:bimby/BimbyBloc.dart';
import 'package:bimby/components/BimbyScaffold.dart';
import 'package:bimby/components/ListaClientiItem.dart';
import 'package:bimby/model/Cliente.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ClienteDetail.dart';
import 'ClientiDaLavorare.dart';
import 'ConsultazioneClienti.dart';

class ListaClienti extends StatefulWidget {
  static const String route = '/ListaClienti';

  bool multiSelection, workPhase;

  @override
  State<StatefulWidget> createState() {
    return new ListaClientiState();
  }
}

class ListaClientiState extends State<ListaClienti>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  Widget body;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    body = ConsultazioneClienti();
    widget.multiSelection = false;
    widget.workPhase = false;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<BimbyBloc>(context);
    bloc.getListaClienti();
    bloc.getAllListaClienti();

    return BimbyScaffold(
      title: 'CLIENTI',
      tabBar: TabBar(
        onTap: changePage,
        labelColor: Theme.of(context).accentColor,
        unselectedLabelColor: Colors.black,
        isScrollable: false,
        tabs: <Widget>[Tab(text: 'LISTA'), Tab(text: 'DA LAVORARE')],
        controller: _tabController,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(child: body),
      ),
    );
  }

  Widget buildBody(AsyncSnapshot snapshot) {
    if (!snapshot.hasData)
      return Center(child: CircularProgressIndicator());
    else
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('Totale: ' + snapshot.data.length.toString())),
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
                  itemCount: snapshot.data.length,
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

  void changePage(int index) {
    setState(() {
      if (_tabController.indexIsChanging) {
        body = index == 0 ? ConsultazioneClienti() : ClientiDaLavorare();
      }
    }); //BLOC
  }
}
