import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mutti_homepage/homepage.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MuttiHomePage(),
      ),
    );

class MyMuttiApp extends StatelessWidget {
  const MyMuttiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const MuttiHomePage(),
    );
  }
}
