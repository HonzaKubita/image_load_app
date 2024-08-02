import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_polywidget/flutter_map_polywidget.dart';
import 'package:image_load_app/app/router.dart';
import 'package:latlong2/latlong.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final mapController = MapController();

  static const _mapInteractionOptions = InteractionOptions(
    enableMultiFingerGestureRace: true,
    flags: InteractiveFlag.doubleTapDragZoom |
        InteractiveFlag.doubleTapZoom |
        InteractiveFlag.drag |
        InteractiveFlag.flingAnimation |
        InteractiveFlag.pinchZoom |
        InteractiveFlag.pinchMove,
  );

  final _mapOptions = MapOptions(
    initialCenter: const LatLng(50.117769, 14.405368),
    initialZoom: 16.5,
    interactionOptions: _mapInteractionOptions,
    cameraConstraint: CameraConstraint.contain(
      bounds: LatLngBounds(
        const LatLng(50.11777 - 0.0069, 14.405349 - 0.0069),
        const LatLng(50.11777 + 0.008, 14.405349 + 0.0067),
      ),
    ),
    minZoom: 15.5,
    maxZoom: 18.0,
    backgroundColor: const Color(0xFFFFFFFF),
    // onPositionChanged: _onMapPositionChanged,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: FlutterMap(
        options: _mapOptions,
        mapController: mapController,
        children: [
          PolyWidgetLayer(
            polyWidgets: [
              PolyWidget(
                center: const LatLng(50.117769, 14.405368),
                widthInMeters: 1000,
                heightInMeters: 1000,
                noRotation: true,
                angle: -7.75,
                constraints:
                    const BoxConstraints.expand(width: 1000, height: 1000),
                child: Image.asset('assets/backgrounds/mapBackground.png'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.replaceRoute(OtherRoute());
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
