import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 40, left: 30, right: 30),
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.yellow[700], BlendMode.darken),
            image: AssetImage('assets/header-image.webp'),
          )),
      child: SizedBox(
        height: 45,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(35)),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, labelText: 'Rechercher ....'),
          ),
        ),
      ),
    );
  }
}
