import 'package:bimby/components/TitleContentElement.dart';
import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class OrdiniEAttivtaCliente extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new OrdiniEAttivtaClienteState();
  }
}

class OrdiniEAttivtaClienteState extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Indirizzo',
                      style: AppTheme()
                          .getListTitleStyle(context)
                          .copyWith(fontWeight: FontWeight.normal)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: TitleContentElement(
                      title: 'Data ultimo acquisto', content: '08/02/2020'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: TitleContentElement(
                              title: 'TM21', content: '0'),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor))),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: TitleContentElement(
                                title: 'TM31', content: '0'),
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
                                  title: 'TM5 bs', content: '0'),
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor)))),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: TitleContentElement(
                                  title: 'TM5 ck', content: '0'),
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor)))),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: TitleContentElement(
                                title: 'TM6', content: '1'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Attivtà',
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
                              title: 'Ultimo contratto', content: 'nessuno'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TitleContentElement(
                              title: 'Ultimo evento', content: 'Nessuno'),
                        ),
                      )
                    ],
                  ),
                ),
                Table(
                  columnWidths: {
                    0: FlexColumnWidth(2.5),
                    // i want this one to take the rest available space
                    1: FlexColumnWidth(1.0),
                  },
                  border: TableBorder.all(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  children: [
                    TableRow(children: [
                      Container(
                        color: Color.fromRGBO(0x4b, 0x4a, 0x4b, 1),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Attivtà',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white)),
                          ),
                        ),
                      ),
                      Container(
                        color: Color.fromRGBO(57, 56, 56, 1),
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Tot',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white)),
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        color: Colors.white,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Dimostrazioni',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        color: Colors.white,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Post vendita',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        color: Colors.white,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Laboratori a casa',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        color: Colors.white,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Fiere',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        color: Colors.white,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Laboratori in ufficio',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        color: Colors.white,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Visite',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        color: Colors.white,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Corsi di cucina con amico',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('0',
                                style: AppTheme()
                                    .getListTitleStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)),
                          ),
                        ),
                      ),
                    ])
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Premiati con Bimby',
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
                              title: 'Ultimo contratto', content: 'nessuno'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TitleContentElement(
                              title: 'Ultimo evento', content: 'Nessuno'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
