import 'package:bimby/components/TitleContentElement.dart';
import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';

class ProfileDialog extends StatelessWidget {
  final String area, divisione, team, incaricata, codice;

  ProfileDialog({
    @required this.area,
    @required this.divisione,
    @required this.team,
    @required this.incaricata,
    @required this.codice,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: ContinuousRectangleBorder(),
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: Container(
        width: 70,
        height: 275,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.account_circle,
                      color: Theme.of(context).accentColor),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Text('PROFILO',
                        style: AppTheme().getListTitleStyle(context))),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Container(height: 1, color: AppTheme.bgGrey),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: TitleContentElement(
                  title: 'Area', content: '040-ANACHILDE GENTILI'),
            ),
            Container(height: 1, color: AppTheme.bgGrey),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: TitleContentElement(
                  title: 'Divisione', content: '040-ANACHILDE GENTILI'),
            ),
            Container(height: 1, color: AppTheme.bgGrey),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: TitleContentElement(
                  title: 'Team', content: '-ANACHILDE GENTILI'),
            ),
            Container(height: 1, color: AppTheme.bgGrey),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: TitleContentElement(
                  title: 'Incaricata', content: 'ILVANA CROLLINI'),
            ),
            Container(height: 1, color: AppTheme.bgGrey),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: TitleContentElement(title: 'Codice', content: '10793'),
            ),
          ],
        ),
      ),
    );
  }
}
