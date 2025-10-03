import 'package:flutter/material.dart';

class DriversScreen extends StatefulWidget {
  const DriversScreen({super.key});

  @override
  State<DriversScreen> createState() => _DriversScreenState();
}

class _DriversScreenState extends State<DriversScreen> {
  List<String> drivers = ["Водитель №1", "Водитель №2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Список водителей")),
      body: ListView.separated(
        itemCount: drivers.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, i) => ListTile(
          title: Text(drivers[i]),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => setState(() => drivers.removeAt(i)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => drivers.add("Водитель №${drivers.length + 1}")),
        child: const Icon(Icons.add),
      ),
    );
  }
}
