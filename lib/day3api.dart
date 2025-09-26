import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
    ),
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<dynamic> fetchData() async {
    var response = await http.get(
      Uri.parse("https://mocki.io/v1/a602d2f7-f7dc-4ad1-9456-a88410de7dce"),
    );
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // ✅ fix tint issue
        scrolledUnderElevation: 0, // ✅ stop scroll shadow
        // elevation: 0,
        surfaceTintColor: Colors.transparent, // ✅ stop material tint
        title: const Text(
          "Funny API 😆",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error loading data"));
          } else if (!snapshot.hasData) {
            return const Center(child: Text("No Data"));
          }

          var data = snapshot.data;
          if (data == null || data["data"] == null) {
            return const Center(child: Text("Invalid API format"));
          }

          var allData = data["data"] as Map;
          var entries = allData.entries.toList();

          return ListView.builder(
            itemCount: entries.length,
            itemBuilder: (context, index) {
              var value = entries[index].value;
              var list = value["todo"];

              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    value["name"],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Role: ${value["role"] ?? "N/A"}"),
                      Text("Mood: ${value["mood"] ?? "N/A"}"),
                      Text("Quote: ${value["quote"] ?? "N/A"}"),
                      Text("Fun Fact: ${value["fun_fact"] ?? "N/A"}"),
                      const SizedBox(height: 20),
                      const Text("Todos"),
                      ...list
                          .map<Widget>((task) => Text("• $task"))
                          .toList(),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
