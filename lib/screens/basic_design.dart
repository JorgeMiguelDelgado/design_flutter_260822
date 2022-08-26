import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          //Imagen
          Image(
            image: AssetImage('assets/wallpaper.jpg'),
          ),
          //Titulo
          TitleSection(),

          //Button Section
          ButtonSection(),

          //Descripcion
          DescripcionScreen(),
        ],
      ),
    );
  }
}
