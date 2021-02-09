import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Estudar flutter',
          subtitle: 'Com o curso do Daniel Ciofli',
          image: AssetImage('images/profile.png'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
            title: 'Estudar flutter 2',
            subtitle: 'Com o curso do Daniel Ciofli 2',
            image: AssetImage('images/profile.png'),
            margin: listSlidePosition.value * 0,
        )
      ],
    );
  }
}
