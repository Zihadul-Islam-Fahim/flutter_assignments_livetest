

import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'View.dart';

main() => runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      builder: (BuildContext context) => ResponsiveApp(
        builder: (BuildContext) {
          double widesize = MediaQuery.of(context).size.width;
          bool? bigScreen = m(widesize);
            return MaterialApp(
              themeMode: ThemeMode.system,
              theme: ThemeData(primarySwatch: Colors.yellow),
              // useInheritedMediaQuery: true,
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              home:  HomePage(),
            );

        },
      ),
    );
  }
}

 m(widesize){
  if(widesize>600){
    return true;
  }
}
