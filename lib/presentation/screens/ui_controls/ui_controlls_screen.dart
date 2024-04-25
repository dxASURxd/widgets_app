import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controlls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDev = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: const Text('Dev mode'),
          subtitle: const Text('advanced settings'),
          value: isDev,
          onChanged: (value) => setState(() {
            isDev = !isDev;
          }),
        ),
        // RadioListTile(
        //   value: ,
        //   // groupValue: groupValue,
        //   // onChanged: onChanged
        // )
      ],
    );
  }
}
