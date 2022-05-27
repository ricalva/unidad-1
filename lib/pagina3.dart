import 'package:flutter/material.dart';

class Pagina3 extends StatefulWidget {
  const Pagina3({Key? key}) : super(key: key);

  @override
  GradientTransformState createState() {
    return GradientTransformState();
  }
}

class GradientTransformState extends State<Pagina3> {
  var top = FractionalOffset.topCenter;
  var bottom = FractionalOffset.bottomCenter;
  var list = [
    Colors.lightGreen,
    Colors.redAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          height: 300.0,
          width: 300.0,
          duration: const Duration(seconds: 1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                begin: top,
                end: bottom,
                colors: list,
                stops: const [0.0, 1.0],
              ),
              color: Colors.lightGreen),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              top = FractionalOffset.bottomLeft;
              bottom = FractionalOffset.topRight;
              list = [Colors.blueAccent, Colors.yellowAccent];
            });
          },
          icon: const Icon(Icons.update),
          label: const Text("Transform")),
    );
  }
}
