import 'package:flutter/material.dart';

class RoutesScreen extends StatefulWidget {
  const RoutesScreen({super.key});

  @override
  State<RoutesScreen> createState() => _RoutesScreenState();
}

class _RoutesScreenState extends State<RoutesScreen> {
  List<String> routes = ["Маршрут №1", "Маршрут №2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Список маршрутов")),
      body: ListView.builder(
        itemCount: routes.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(routes[i]),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => setState(() => routes.removeAt(i)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => routes.add("Маршрут №${routes.length + 1}")),
        child: const Icon(Icons.add),
      ),
    );
  }
}
