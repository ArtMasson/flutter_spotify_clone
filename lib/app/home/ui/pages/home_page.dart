import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spotify_clone/config/ui/theme/ui/stores/theme_store.dart';
import 'package:flutter_spotify_clone/core/common/injected/module.dart';
import 'package:flutter_gen/gen_l10n/intl_localizations.dart';
import 'package:flutter_spotify_clone/core/common/utils/screen_utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ThemeStore themeStore = getIt.get<ThemeStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: themeStore.toggleTheme,
        child: themeStore.isDark
            ? Icon(Icons.brightness_high)
            : Icon(Icons.brightness_2),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      //TODO: Change system appBar color on repository, not in here
      value: themeStore.isDark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.homeWelcome,
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              AppLocalizations.of(context)!.homeDesc,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
