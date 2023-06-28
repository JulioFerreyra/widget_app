import 'package:flutter/material.dart';

class UiControlsScreen extends StatefulWidget {
  static const name = "ui_controls_screen";
  const UiControlsScreen({super.key});

  @override
  State<UiControlsScreen> createState() => _UiControlsScreenState();
}

class _UiControlsScreenState extends State<UiControlsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(UiControlsScreen.name.replaceAll("_", " ")),
      ),
      body: const _UiControlView(),
    );
  }
}

class _UiControlView extends StatefulWidget {
  const _UiControlView();

  @override
  State<_UiControlView> createState() => _UiControlViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlViewState extends State<_UiControlView> {
  Transportation selectedTransportation = Transportation.car;
  bool isDeveloper = true;
  bool wantsBreakfast = false;
  bool wantsDinner = false;
  bool wantsLunch = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
            
          }),
          title: const Text("Developer mode"),
          subtitle: const Text("Controles adicionales"),
        ),
        ExpansionTile(
          title: const Text("Vehículo de transporte"),
          subtitle: Text("$selectedTransportation"),
          children: [
            RadioListTile(
              title: const Text("By Car"),
              subtitle: const Text("Viajar por carro"),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                return setState(() {
                  selectedTransportation = Transportation.car;
                });
              },
            ),
            RadioListTile(
              title: const Text("By Boat"),
              subtitle: const Text("Viajar por barco"),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                return setState(() {
                  selectedTransportation = Transportation.boat;
                });
              },
            ),
            RadioListTile(
              title: const Text("By Plane"),
              subtitle: const Text("Viajar por avión"),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                return setState(() {
                  selectedTransportation = Transportation.plane;
                });
              },
            ),
            RadioListTile(
              title: const Row(
                children: [
                  Icon(Icons.water),
                  SizedBox(
                    width: 10,
                  ),
                  Text("By submarine"),
                ],
              ),
              subtitle: const Text("Viajar por submarino"),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) {
                return setState(() {
                  selectedTransportation = Transportation.submarine;
                });
              },
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text("¿Quiere desayunar?"),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text("¿Quiere comer?"),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text("¿Quiere cenar?"),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
