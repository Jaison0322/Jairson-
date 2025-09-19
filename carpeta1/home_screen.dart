import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INFORMACIÓN PERSONAL'),
        actions: [IconButton(icon: Icon(Icons.flash_on), onPressed: () {})],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    'https://www.shutterstock.com/image-photo/businessman-computer-laptop-document-management-260nw-2526128815.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' JAIRSON NORIEGA ZUÑIGA',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('ESTUDIANTE ING SISTEMAS'),
                    Text('3005396688'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'GitHub'),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'LinkedIn',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Twitter'),
        ],
      ),
    );
  }
}
