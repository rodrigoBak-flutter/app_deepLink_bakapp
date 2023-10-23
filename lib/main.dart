import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(MaterialApp.router(
    debugShowCheckedModeBanner: false,
    //CONFIGURACION DE MIS RUTAS DE MANERA MANUAL
    routerConfig: router));

final router = GoRouter(
  routes: [
    //MIS RUTAS
    GoRoute(
      path: '/',
      builder: (_, __) => Scaffold(
        //SI DEJO EL LINK GENERADO POR FIREBASE EN ESTE CASO, SIEMPRE VA A IR A ESTA PANTALLA
        appBar: AppBar(
          //COLOR PARA DIFENCIAR LA RUTA
          backgroundColor: Colors.blue,
          title: const Text('Home Screen'),
        ),
        body: const Center(child: Text('Prueba DeepLink FIREBASE')),
      ),
      
    ),
  ],
);












/*

routes: [
        GoRoute(
          path: 'details/id:',
          builder: (_, state) => Scaffold(
            //PUEDO AGREGARLE PARAMETROS PARA QUE CAMBIE DE PANTALLA, DANDOLE POR EJEMPLO UN ID
            appBar: AppBar(
                //COLOR PARA DIFERENCIAR LA RUTA
                backgroundColor: Colors.red,
                title: Text(
                  state.pathParameters['id'].toString(),
                )),
          ),
        ),
      ],


 */