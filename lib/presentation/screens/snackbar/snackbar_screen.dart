import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    const snackback = SnackBar(
      content: Text('Hola mundo'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Ure shure?'),
              content: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi lectus dui, pharetra sit amet nulla sed, lobortis vestibulum arcu. Praesent velit odio, commodo et auctor sit amet, pulvinar id urna. In id magna aliquet, dapibus ex in, porta lectus. Donec volutpat tristique nulla in aliquam. Etiam vehicula feugiat lacus vitae tincidunt.'),
            ));
  }

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar and dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context);
                },
                child: const Text('Licenses used')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Show dialog')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('show snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
