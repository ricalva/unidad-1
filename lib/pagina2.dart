import 'package:flutter/material.dart';
import 'package:layouts_jsc/pagina3.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Este es mi segunda pantalla"),
      ),
      body: Center(
          child: Column(
        children: [
          const Text("Hola!! este es mi segunda Pantalla"),
          Container(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0),
            child: RaisedButton(
              child: const Text("Ir a la animacion",
                  style: TextStyle(fontStyle: FontStyle.italic)),
              color: Colors.greenAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pagina3()),
                );
              },
            ),
          ),
          texto
        ],
      )),
    );
  }
}

Widget texto = Container(
  padding:
      const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 20.0, top: 20.0),
  child: Column(
    children: [
      const Text(
        'Instituto Tecnologico Superior de la Sierra Negra de Ajalpan'
        'El Instituto Tecnológico Superior de la Sierra Negra de Ajalpan,'
        'desde su fundación (el 10 de septiembre de 2007) ha mantenido el firme compromiso de formar'
        'profesionistas competitivos y emprendedores, capaces de dar respuesta a los diversos problemas'
        'de la sociedad con la intención de impulsar el desarrollo económico de nuestra Región, '
        'de nuestro Estado y por supuesto de nuestro México. Hoy el ITSSNA brinda una oportunidad de progreso'
        'a los jóvenes que con toda libertad deciden transformar su vida con el proyecto de estudiar unaingeniería.',
        softWrap: true,
      ),
      Container(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset(
          'images/imagen.jpg',
          width: 600,
          height: 280,
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);
