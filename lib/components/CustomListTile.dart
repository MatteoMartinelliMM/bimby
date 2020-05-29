import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  bool selectionMode, addToWork;
  String nome, indirizzo;

  CustomListTile({
    this.nome,
    this.indirizzo,
    this.selectionMode,
    this.addToWork,
  });

  @override
  State<StatefulWidget> createState() {
    return new CustomListTileState();
  }
}

class CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 4, top: 4, right: 4),
          child: Row(
            children: <Widget>[
              widget.selectionMode
                  ? Checkbox(
                      onChanged: (value) {},
                    )
                  : Icon(
                      Icons.account_circle,
                      color: Theme.of(context).accentColor,
                    ),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text(widget.nome,
                    style: AppTheme().getBaseInfoTextStyle(context)),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.addToWork = !widget.addToWork;
                  });
                },
                child: Text(widget.addToWork ? '' : '',
                    style: TextStyle(
                        fontFamily: 'Bimby',
                        color: Theme.of(context).accentColor,
                        fontSize: 24)),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 4),
          child: Row(
            children: <Widget>[
              Text(widget.indirizzo,
                  style: TextStyle(fontSize: 14, fontFamily: 'Bimby'))
            ],
          ),
        )
      ],
    );
  }
}
