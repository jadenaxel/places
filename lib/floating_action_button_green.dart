import "package:flutter/material.dart";

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool heart_state = false;

  void onPressedFav() {
    setState(() {
      heart_state = !heart_state;
    });
  }

  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
          heart_state ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}