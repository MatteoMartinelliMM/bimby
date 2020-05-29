import 'package:bimby/components/BimbyScaffold.dart';
import 'package:bimby/components/CardListaClienti.dart';
import 'package:bimby/components/ProfileDialog.dart';
import 'package:bimby/components/ProfileHeader.dart';
import 'package:bimby/components/SocialLinks.dart';
import 'package:bimby/screen/ListaClienti.dart';
import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../BimbyBloc.dart';

class Homepage extends StatefulWidget {
  bool selected = false, openFooter = false;

  @override
  State<StatefulWidget> createState() {
    return HomepageState();
  }
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return BimbyScaffold(
        title: 'HOME',
        menuAction: openMenu,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ProfileHeader(),
            CardListaClienti(arrowAction: () {
              Navigator.pushNamed(context, ListaClienti.route);
            }),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: <Widget>[
                  Icon(Icons.info_outline, size: 14),
                  SizedBox(width: 15),
                  Text('Sito ottimizato per l\'uso verticale',
                      style: Theme.of(context).textTheme.caption)
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.openFooter = !widget.openFooter;
                });
              },
              child: AnimatedContainer(
                  color: Theme.of(context).primaryColorDark,
                  width: double.infinity,
                  height: widget.openFooter ? 125 : 50,
                  duration: Duration(milliseconds: 600),
                  curve: Curves.linear,
                  child: widget.openFooter
                      ? Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Column(
                            children: <Widget>[
                              condensedFooter(context, widget.openFooter),
                              SizedBox(height: 24),
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text('Termini e condizioni',
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline
                                            .copyWith(color: Colors.white)),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 44),
                                    child: Text('Social media:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline
                                            .copyWith(color: Colors.white)),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text('Bimby.it',
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline
                                            .copyWith(color: Colors.white)),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4, right: 16),
                                    child: SocialLinks(),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text('Cookiedo',
                                        style: Theme.of(context)
                                            .textTheme
                                            .overline
                                            .copyWith(color: Colors.white)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: condensedFooter(context, widget.openFooter),
                        )),
            )
          ],
        ));
  }

  Row condensedFooter(BuildContext context, bool openFooter) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Vorwerk Bimby',
            style: AppTheme()
                .getListTitleStyle(context)
                .copyWith(color: Colors.white)),
        Spacer(),
        Text(openFooter ? 'Chiudi footer' : 'Apri footer',
            style: Theme.of(context)
                .textTheme
                .overline
                .copyWith(color: Colors.white)),
        Icon(openFooter ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            color: Colors.white)
      ],
    );
  }

  void openMenu() {
    setState(() {
      widget.selected = !widget.selected;
    });
  }

  @override
  void initState() {
    widget.openFooter = false;
    widget.selected = false;
  }
}
