import 'package:bimby/model/Cliente.dart';
import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

import 'IconDetailsElement.dart';

class HeaderCliente extends StatelessWidget {
  Cliente cliente;

  HeaderCliente({this.cliente});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('',
                    style: AppTheme()
                        .getBaseInfoTextStyle(context)
                        .copyWith(fontWeight: FontWeight.normal,fontSize: 22)),
                Text(cliente.nome,
                    style: AppTheme().getBaseInfoTextStyle(context)),
                Spacer(),
                Text('',
                    style: AppTheme()
                        .getMainInfoTextStyle(context)
                        .copyWith(fontWeight: FontWeight.normal, fontSize: 22))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: IconDetailsElement(
                        icon: '', selected: true, withBorder: true)),
                Expanded(
                    flex: 1,
                    child: IconDetailsElement(
                        icon: '', selected: false, withBorder: true)),
                Expanded(
                    flex: 1,
                    child: IconDetailsElement(
                        icon: '', selected: false, withBorder: true)),
                Expanded(
                    flex: 1,
                    child: IconDetailsElement(
                        icon: '',
                        withBorder: true,
                        selected: false,
                        withCounter: 0)),
                Expanded(
                    flex: 3,
                    child: IconDetailsElement(
                        icon: '', selected: false, withBorder: false)),
                Spacer(),
                Text('',
                    style: AppTheme()
                        .getBaseInfoTextStyle(context)
                        .copyWith(fontWeight: FontWeight.normal))
              ],
            )
          ],
        ),
      ),
    );
  }
}
