import 'package:flutter/material.dart';

class BusesScreen extends StatefulWidget {
  const BusesScreen({super.key});

  @override
  State<BusesScreen> createState() => _BusesScreenState();
}

class _BusesScreenState extends State<BusesScreen> {
  List<String> buses = ["Автобус №1", "Автобус №2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Список автобусов")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < buses.length; i++)
              ListTile(
                title: Text(buses[i]),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => setState(() => buses.removeAt(i)),
                ),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => buses.add("Автобус №${buses.length + 1}")),
        child: const Icon(Icons.add),
      ),
    );
  }
}
