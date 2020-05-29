import 'package:bimby/components/BimbyScaffold.dart';
import 'package:bimby/theme/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';

class MapScreen extends StatefulWidget {
  static const String route = '/ListaClienti/ClienteDetail/MapScreen';

  @override
  State<StatefulWidget> createState() {
    return new MapScreenState();
  }
}

class MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return BimbyScaffold(
      withBackArrow: true,
      title: 'MAPPA',
      body: Stack(
        children: <Widget>[
          GoogleMap(
            markers: {
              Marker(
                GeoCoord(34.0469058, -118.3503948),
              ),
            },
            initialZoom: 12,
            initialPosition: GeoCoord(34.0469058, -118.3503948),
            // Los Angeles, CA
            mapType: MapType.roadmap,
            interactive: true,
            onTap: (coord) {},
            mobilePreferences: const MobileMapPreferences(
              trafficEnabled: true,
            ),
            webPreferences: WebMapPreferences(
              fullscreenControl: true,
              zoomControl: true,
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Row(children: [
                              Text(
                                '',
                                style: AppTheme()
                                    .getMainInfoTextStyle(context)
                                    .copyWith(fontWeight: FontWeight.normal),
                              ),
                              Text(
                                'GUERRA ANNALISA',
                                style: AppTheme()
                                    .getBaseInfoTextStyle(context)
                                    .copyWith(fontSize: 14),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text('Prec.ALTA',
                                    style: AppTheme()
                                        .getMainInfoTextStyle(context)
                                        .copyWith(fontSize: 10)),
                              ),
                            ]),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Viale del Risorgimento, 30, 6122, PESARO',
                                    style: AppTheme().getSmallTextStyle(context).copyWith(wordSpacing: 0.5, letterSpacing: 0.5)),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {},
                          color: Theme.of(context).accentColor,
                          child: Text('APRI IN GOOGOLE MAPS',
                              style: AppTheme()
                                  .getBaseInfoTextStyle(context)
                                  .copyWith(fontSize: 12)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
