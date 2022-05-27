import 'package:flutter/material.dart';
import 'package:layouts_jsc/pagina2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Image.asset(
          'images/imagen1.jpg',
          width: 300,
          height: 300,
          fit: BoxFit.fill,
        ),
        const TitleSection(),
        buttonSection,
        textSection,
        Container(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0),
            child: RaisedButton(
              child: const Text('Open route'),
              //*Se agrega navigator.push pora passar a la otra pagina o ventana
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Pagina2()));
              },
            ))
      ]),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28.0),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: const Text(
                    "Instituto Tecnologico Superior de la Sierra Negra de Ajalpan",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            const Text("Ingenieria en Sistemas computacionales",
                style: TextStyle(color: Colors.teal)),
            const Icon(Icons.computer),
            const Text("Alumno: Jesus Antonio Silva Castro",
                style: TextStyle(color: Color.fromARGB(255, 51, 8, 243))),
            const Icon(Icons.person),
          ],
        )),

        //Se agrega las estrellas como referencia de calificacion
        Icon(
          Icons.star,
          color: Colors.yellow[500],
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[500],
        ),
        Icon(
          Icons.star_half_outlined,
          color: Colors.yellow[500],
        ),
        Icon(
          Icons.star_outline,
          color: Colors.yellow[500],
        ),
        const Text("41"),
      ]),
    );
  }
}

Column _builButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      )
    ],
  );
}

Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _builButtonColumn(Colors.blue, Icons.call, 'CALL'),
      _builButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
      _builButtonColumn(Colors.blue, Icons.share, 'SHARE'),
    ],
  ),
);

Widget textSection = Container(
  padding:
      const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 20.0, top: 20.0),
  child: Column(
    children: <Widget>[
      const Text(
        '¿Qué es Flutter?'
        ""
        'Flutter es un SDK desarrollado por Google para crear aplicaciones móviles tanto para Android como para iOS (Apple)'
        ' Fue desarrollado como un software para uso interno dentro de la compañía pero vieron el potencial que tenia y decidieron lanzarlo como proyecto de código libre. '
        'Actualmente es uno de los proyectos de desarrollo de aplicaciones móviles que más está creciendo. Además, desde la última versión estable, también es posible realizar aplicaciones Web y de escritorio para Windows y Mac. Aunque en estas dos plataformas aún está en fase experimental (beta) '
        'Estas son las tres principales ventajas que ofrece Flutter respecto a otras frameworks de desarrollo de aplicaciones multiplataforma: '
        '1. Compila en nativo, tanto en Android como en iOS.'
        '2. La creación interfaces gráficas es muy flexible, puedes combinar diferentes Widgets (elementos gráficos) para crear las vistas.'
        '3. El desarrollo es muy rápido, permite ver el resultado de forma instantánea mientras se escribe el código.',
        softWrap: true,
      ),
      Container(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset(
          'images/flutter.jpg',
          width: 600,
          height: 280,
          fit: BoxFit.cover,
        ),
      )
    ],
  ),
);

class SecondRouter extends StatelessWidget {
  const SecondRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: const Text("Regresar"),
          color: Colors.deepOrangeAccent,
        ),
      ),
    );
  }
}
