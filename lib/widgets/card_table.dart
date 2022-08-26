import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.book_outlined,
              color: Colors.blue,
              iconColor: Colors.white,
              text: 'Libros',
            ),
            _SingleCard(
              icon: Icons.stadium,
              color: Colors.red,
              iconColor: Colors.white,
              text: 'Estadios',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.supervised_user_circle_outlined,
              color: Colors.yellow,
              iconColor: Colors.black,
              text: 'Personal',
            ),
            _SingleCard(
              icon: Icons.settings,
              color: Colors.green,
              text: 'Configuraciones',
              iconColor: Colors.white,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.book_outlined,
              color: Colors.blue,
              iconColor: Colors.white,
              text: 'Libros',
            ),
            _SingleCard(
              icon: Icons.stadium,
              color: Colors.red,
              iconColor: Colors.white,
              text: 'Estadios',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.supervised_user_circle_outlined,
              color: Colors.yellow,
              iconColor: Colors.black,
              text: 'Personal',
            ),
            _SingleCard(
              icon: Icons.settings,
              color: Colors.green,
              text: 'Configuraciones',
              iconColor: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final Color? iconColor;

  const _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
    this.iconColor,
  });
  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(
            icon,
            size: 35,
            color: iconColor,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 18,
          ),
        ),
      ],
    );
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
