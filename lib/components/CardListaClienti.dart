import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardListaClienti extends StatelessWidget {
  VoidCallback arrowAction;

  CardListaClienti({this.arrowAction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: Text('Lista clienti',
                        style: AppTheme().getListTitleStyle(context)),
                    subtitle: Text(
                        'Accedi alla tua lista clienti, consulta i dettagli e crea la tua lista da lavorare.',
                        style: Theme.of(context).textTheme.caption),
                    trailing: Image.asset('assets/images/clienti.png'),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: GestureDetector(
                onTap: arrowAction,
                child: Container(
                  color: AppTheme.accent,
                  constraints: BoxConstraints.tightForFinite(),
                  child: Center(
                      child: Icon(Icons.arrow_forward, color: Colors.white)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
