import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

import 'ProfileDialog.dart';

class BimbyScaffold extends StatefulWidget {
  String title;
  Widget body;
  TabBar tabBar;
  VoidCallback menuAction;
  bool selected = false, withBackArrow = false;

  BimbyScaffold(
      {this.title,
      this.menuAction,
      this.tabBar,
      this.body,
      this.withBackArrow});

  @override
  State<StatefulWidget> createState() {
    return new BimbyScaffoldState();
  }
}

class BimbyScaffoldState extends State<BimbyScaffold> {
  TabController _tabController;
  ObjectKey withBackArrow;

  @override
  void initState() {
    widget.selected = false;
    withBackArrow = new ObjectKey(
        widget.withBackArrow != null ? widget.withBackArrow : false);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(calculateAppBarHeight()),
          child: buildAppBar(withBackArrow.value)),
      body: widget.body,
    );
  }

  double calculateAppBarHeight() {
    double heigth;
    heigth = widget.tabBar != null
        ? kToolbarHeight + kTextTabBarHeight
        : kToolbarHeight;
    return widget.selected ? heigth + 70 : heigth;
  }

  Widget buildAppBar(bool withBackArrow) {
    return withBackArrow
        ? appBar(withBackArrow)
        : GestureDetector(
            child: AnimatedContainer(
            color: Colors.white,
            width: double.infinity,
            duration: Duration(seconds: 2),
            curve: widget.selected ? Curves.bounceIn : Curves.bounceOut,
            child: appBar(withBackArrow),
          ));
  }

  AppBar appBar(bool withBackArrow) {
    return AppBar(
        centerTitle: true,
        leading: !withBackArrow
            ? Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Spacer(flex: 2),
                  Flexible(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.scaleDown,
                              image: AssetImage('assets/images/bimby.png'))),
                    ),
                  ),
                ],
              )
            : IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
        bottom: PreferredSize(
          child: buildBottomBar(),
        ),
        title:
            Text(widget.title, style: AppTheme().getAppBarFontStyle(context)),
        actions: buildToolbarActions(withBackArrow));
  }

  List<Widget> buildToolbarActions(bool withBackArrow) {
    List<Widget> actions = new List();
    if (!withBackArrow) {
      actions.add(IconButton(
        icon: Icon(Icons.account_circle),
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) => ProfileDialog());
        },
      ));
      actions.add(IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          setState(() {
            widget.selected = !widget.selected;
          });
        },
      ));
    }
    return actions;
  }

  buildBottomBar() {
    if (widget.tabBar != null) {
      return Column(
        children: <Widget>[drawerMenuWidget(), widget.tabBar],
      );
    } else {
      return drawerMenuWidget();
    }
  }

  Widget drawerMenuWidget() {
    return widget.selected
        ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("CLIENTI",
                      textAlign: TextAlign.left,
                      style: AppTheme().getBaseInfoTextStyle(context)),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.selected = !widget.selected;
                    });
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("TORNA A MONDO BIMBY",
                        style: AppTheme().getBaseInfoTextStyle(context)),
                  ),
                )
              ],
            ),
          )
        : Container();
  }
}
