import 'package:bimby/components/TitleContentElement.dart';
import 'package:bimby/model/Cliente.dart';
import 'package:bimby/screen/MapScreen.dart';
import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class AnagraficaCliente extends StatefulWidget {
  Cliente cliente;

  AnagraficaCliente({this.cliente});

  @override
  State<StatefulWidget> createState() {
    return AnagraficaClienteState();
  }
}

class AnagraficaClienteState extends State<AnagraficaCliente> {
  FocusNode focusNode;

  bool toggleTf;

  bool consensoPrivacy;

  @override
  void initState() {
    toggleTf = false;
    focusNode = new FocusNode();
    consensoPrivacy = false;
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text('Indirizzo',
                            style: AppTheme()
                                .getListTitleStyle(context)
                                .copyWith(fontWeight: FontWeight.normal)),
                        Spacer(),
                        GestureDetector(
                          onTap: () {}, //TODO LAUNCH MAPS
                          child: Text('',
                              style: AppTheme()
                                  .getMainInfoTextStyle(context)
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 24,
                                      fontSize: 22)),
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, MapScreen.route),
                          //TODO OPEN MAP IN APP
                          child: Text('',
                              style: AppTheme()
                                  .getMainInfoTextStyle(context)
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 22)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TitleContentElement(
                        title: 'Indirizzo',
                        content: widget.cliente.indirizzo),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: TitleContentElement(
                                title: 'CAP', content: '61122'),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor))),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: TitleContentElement(
                                  title: 'Comune', content: 'PESARO'),
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor))),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: TitleContentElement(
                                  title: 'Provincia', content: 'PU'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 1,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Contatti',
                          style: AppTheme()
                              .getListTitleStyle(context)
                              .copyWith(fontWeight: FontWeight.normal)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TitleContentElement(
                        title: 'Telefono', content: '+393456416544'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TitleContentElement(
                        title: 'Indirizzo email',
                        content: 'Marco.Proserpio@vorwerk.it'),
                  ),
                  Container(
                      width: double.infinity,
                      height: 1,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Dati fiscali',
                          style: AppTheme()
                              .getListTitleStyle(context)
                              .copyWith(fontWeight: FontWeight.normal)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor))),
                            child: TitleContentElement(
                                title: 'Codice Fiscale',
                                content: 'MRTMTT94T09a952d'),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: TitleContentElement(
                                title: 'Partita Iva', content: ''),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 1,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 8.0, right: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Altri dati',
                          style: AppTheme()
                              .getListTitleStyle(context)
                              .copyWith(fontWeight: FontWeight.normal)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: consensoPrivacy,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              consensoPrivacy = value;
                            });
                          },
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Consenso privacy',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(color: Colors.black),
                              textAlign: TextAlign.start),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 1,
                      color: Theme.of(context).scaffoldBackgroundColor),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, right: 8.0, left: 8.0),
                    child: Row(
                      children: <Widget>[
                        Text('Note',
                            style: AppTheme()
                                .getListTitleStyle(context)
                                .copyWith(fontWeight: FontWeight.normal)),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              toggleTf = !toggleTf;
                              focusNode.requestFocus();
                            });
                          },
                          child: Text('',
                              style: AppTheme()
                                  .getMainInfoTextStyle(context)
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 24,
                                      fontSize: 22)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 130,
                      child: TextField(
                          key: formKey,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: Colors.black),
                          enabled: toggleTf,
                          focusNode: focusNode,
                          decoration:
                              InputDecoration(border: InputBorder.none)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
