import 'package:flutter/material.dart';

class DescripcionScreen extends StatelessWidget {
  const DescripcionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Text(
        'Cillum ad amet tempor nostrud magna. Voluptate fugiat laboris culpa duis dolore quis magna eu quis. Commodo ipsum laboris fugiat sunt duis.',
      ),
    );
  }
}
