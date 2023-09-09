import 'package:flutter/material.dart';

class ExpensesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastos'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Registro de Gastos',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Mes y Año (Predeterminado: Fecha actual)',
                ),
                controller: TextEditingController(),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Concepto',
                  hintText: 'Ingrese un concepto',
                ),
                controller: TextEditingController(),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Monto',
                  hintText: 'Ingrese el monto',
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                controller: TextEditingController(),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField(
                items: ['Necesidad', 'Mensual', 'Excepcional', 'Único']
                    .map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Categoría',
                ),
                onChanged: (selectedCategory) {
                  // Puedes manejar la selección de la categoría aquí
                },
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context); // Volver a la pantalla principal
                },
                icon: Icon(Icons.check, color: Colors.green),
                label: Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
