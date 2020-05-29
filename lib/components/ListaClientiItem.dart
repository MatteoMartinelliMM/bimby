import 'package:bimby/components/CustomListTile.dart';
import 'package:bimby/components/DetailsListElement.dart';
import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'IconDetailsElement.dart';

class ListaClientiItem extends StatelessWidget {
  String nome, indirizzo, modello, dataAcquisto, tipoContratto, contratto;

  ListaClientiItem(
      {this.nome,
      this.indirizzo,
      this.modello,
      this.dataAcquisto,
      this.tipoContratto,
      this.contratto});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CustomListTile(
                nome: nome,
                indirizzo: indirizzo,
                selectionMode: false,
                addToWork: false),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: DetailListElement(label: 'Ult.mod', desc: 'TMG')),
                Expanded(
                    flex: 2,
                    child: DetailListElement(
                        label: 'Ult.acquisto', desc: '24/05/2020')),
                Expanded(
                    flex: 3,
                    child: DetailListElement(
                        label: 'Tipo.ult. cont.', desc: 'N/D')),
                Expanded(
                  flex: 2,
                  child: DetailListElement(
                      label: 'Ult.contratto',
                      desc: 'Nessuno',
                      withColor: Colors.red),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: IconDetailsElement(
                        icon: '', selected: true, withBorder: true)),
                //GDPR
                Expanded(
                  flex: 1,
                  child: IconDetailsElement(
                      icon: '', selected: false, withBorder: true),
                ),
                //CASA
                Expanded(
                  flex: 1,
                  child: IconDetailsElement(
                      icon: '', selected: false, withBorder: true),
                ),
                //CUCINA
                Expanded(
                  flex: 1,
                  child: IconDetailsElement(
                      icon: '',
                      selected: false,
                      withCounter: 0,
                      withBorder: true),
                ),
                //REGALO
                Expanded(
                  flex: 3,
                  child: IconDetailsElement(
                      icon: '', selected: false, withBorder: false),
                )
              ],
            )
          ],
        ),
      ),
      secondaryActions: <Widget>[

        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => Scaffold.of(context)
                    .showSnackBar(new SnackBar(content: Text('Pino'))),
                child: Container(
                    width: 75,
                    color: Theme.of(context).accentColor,
                    child: Center(
                        child: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ))),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => Scaffold.of(context)
                    .showSnackBar(new SnackBar(content: Text('Mimmo'))),
                child: Container(
                    width: 75,
                    color: Theme.of(context).primaryColorDark,
                    child: Center(
                        child: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ))),
              ),
            ),
          ],
        )
      ],
    );
  }
}
