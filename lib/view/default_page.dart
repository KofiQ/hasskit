import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hasskit/helper/general_data.dart';
import 'package:hasskit/helper/locale_helper.dart';
import 'package:hasskit/helper/material_design_icons.dart';
import 'package:hasskit/helper/theme_info.dart';

class DefaultPage extends StatelessWidget {
  final String error;

  const DefaultPage({@required this.error});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Opacity(
          opacity: 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                MaterialDesignIcons.getIconDataFromIconName(
                    "mdi:home-assistant"),
                size: 150,
              ),
              SizedBox(height: 20),
              Text(
                Translate.getString("global.connect_hass", context),
                style: Theme.of(context).textTheme.title,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                error,
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.justify,
                maxLines: 3,
                textScaleFactor: gd.textScaleFactorFix,
                overflow: TextOverflow.ellipsis,
              ),
              SpinKitThreeBounce(
                size: 40,
                color: ThemeInfo.colorIconActive.withOpacity(0.5),
              ),
            ],
          ),
        ));
  }
}
