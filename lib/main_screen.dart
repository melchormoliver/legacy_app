import 'package:flutter/material.dart';
import 'expenses_screen.dart'; // Importa la pantalla de gastos
import 'options_screen.dart'; // Importa la pantalla de opciones

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double saldo = -100.0; // Saldo inicial (ajustado a -100)

  @override
  Widget build(BuildContext context) {
    // Determina el color de fondo basado en el saldo
    Color backgroundColor = saldo >= 0 ? Colors.green : Colors.red;

    return Scaffold(
      appBar: AppBar(
        title: Text('Saldo'),
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$${saldo.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20), // Espacio entre el saldo y los botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExpensesScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Icon(Icons.add),
                      Text('Gastos'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OptionsScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Icon(Icons.add),
                      Text('Opciones'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Estilo similar al botón de gastos
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Espacio entre los botones y el mensaje
            Text('Consejo'), // Mensaje de consejo
          ],
        ),
      ),
    );
  }
}
