import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_load_app/app/router.dart';

@RoutePage()
class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: ElevatedButton(
            onPressed: () => {context.navigateTo(HomeRoute())},
            child: const Text('Go back')),
      ),
    );
  }
}
