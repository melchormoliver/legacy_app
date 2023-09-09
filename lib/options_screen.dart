import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opciones'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Seleccione una opción:',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _showConstructionDialog(
                  context); // Mostrar diálogo "En construcción"
            },
            child: Text('Consulta de Gastos'),
          ),
          ElevatedButton(
            onPressed: () {
              _showConstructionDialog(
                  context); // Mostrar diálogo "En construcción"
            },
            child: Text('Consulta de Gráficas'),
          ),
          ElevatedButton(
            onPressed: () {
              _showConstructionDialog(
                  context); // Mostrar diálogo "En construcción"
            },
            child: Text('Consultar Ahorros'),
          ),
          ElevatedButton(
            onPressed: () {
              _showConstructionDialog(
                  context); // Mostrar diálogo "En construcción"
            },
            child: Text('Realizar Presupuesto'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Navegar hacia atrás
            },
            child: Text('Volver al Menú Principal'),
          ),
        ],
      ),
    );
  }

  void _showConstructionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('En Construcción'),
          content: Text('Esta característica está en construcción.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
