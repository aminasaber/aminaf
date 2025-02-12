import 'package:flutter/material.dart';

class TempleListPage extends StatelessWidget {
  final List<Map<String, String>> temples = [
    {'name': 'Golden Temple', 'image': 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Golden_Temple_Amritsar%2C_Punjab.jpg'},
    {'name': 'Meenakshi Temple', 'image': 'https://upload.wikimedia.org/wikipedia/commons/d/d4/Meenakshi_Amman_Temple_panorama.jpg'},
    {'name': 'Somnath Temple', 'image': 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Somnath_temple.jpg'},
    {'name': 'Badrinath Temple', 'image': 'https://upload.wikimedia.org/wikipedia/commons/6/60/Badrinath_Temple%2C_Uttarakhand.jpg'},
    {'name': 'Kedarnath Temple', 'image': 'https://upload.wikimedia.org/wikipedia/commons/e/ea/Kedarnath_Temple_in_the_himalaya%2C_India.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Temples'),
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: temples.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.network(
                      temples[index]['image']!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    temples[index]['name']!,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}