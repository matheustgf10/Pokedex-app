import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PokedexAppBar extends StatefulWidget {
  @override
  _PokedexAppBarState createState() => _PokedexAppBarState();
}

class _PokedexAppBarState extends State<PokedexAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Row(
        children: [
          CupertinoButton(
              child: Icon(CupertinoIcons.arrow_left, color: Colors.black),
              onPressed: () {
                Modular.to.pop();
              }),
          Spacer(),
          CupertinoButton(
              child: Icon(CupertinoIcons.bars, color: Colors.black),
              onPressed: () {}),
        ],
      ),
    );
  }
}
