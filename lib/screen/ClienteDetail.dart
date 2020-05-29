import 'package:bimby/components/BimbyScaffold.dart';
import 'package:bimby/components/HeaderCliente.dart';
import 'package:bimby/components/TitleContentElement.dart';
import 'package:bimby/model/Cliente.dart';
import 'package:bimby/screen/AnagraficaCliente.dart';
import 'package:bimby/screen/OrdiniEAttivitaCliente.dart';
import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class ClienteDetail extends StatefulWidget {
  static const String route = '/ListaClienti/ClienteDetail';

  @override
  State<StatefulWidget> createState() {
    return new ClienteDetailState();
  }
}

class ClienteDetailState extends State<ClienteDetail>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  Cliente c;
  FocusNode focusNode;

  bool toggleTf;

  bool consensoPrivacy;

  int mIndex;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    toggleTf = false;
    focusNode = new FocusNode();
    consensoPrivacy = false;
    mIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    c = ModalRoute.of(context).settings.arguments;
    return BimbyScaffold(
        withBackArrow: true,
        title: 'SCHEDA CLIENTE',
        tabBar: TabBar(
          onTap: changePage,
          labelColor: Theme.of(context).accentColor,
          unselectedLabelColor: Colors.black,
          isScrollable: false,
          tabs: <Widget>[
            Tab(text: 'ANAGRAFICA'),
            Tab(text: 'ORDINI E ATTIVITVÀ')
          ],
          controller: _tabController,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                HeaderCliente(cliente: c),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Scrollbar(
                      isAlwaysShown: true,
                      child: SingleChildScrollView(
                        child: mIndex == 0
                            ? AnagraficaCliente(cliente: c)
                            : OrdiniEAttivtaCliente(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(right: 1),
                          child: RaisedButton(
                            color: Theme.of(context).accentColor,
                            onPressed: () {},
                            child: Text('MAIL',
                                style: AppTheme()
                                    .getMainInfoTextStyle(context)
                                    .copyWith(color: Colors.white)),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 1),
                          child: RaisedButton(
                            color: Theme.of(context).accentColor,
                            onPressed: () {},
                            child: Text('CHIAMA',
                                style: AppTheme()
                                    .getMainInfoTextStyle(context)
                                    .copyWith(color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )));
  }

  void changePage(int index) {
    setState(() {
      mIndex = index;
    }); //BLOC
  }
}
